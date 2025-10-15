import torch
import torch.nn as nn
import pywt
from ptwt.stationary_transform import swt, iswt


class WIN(nn.Module):
    def __init__(self, num_features, seq_len, pred_len, w_levels=1, eps=1e-5):
        """
        :param num_features: the number of features or channels
        :param seq_len: the length of input sequence
        :param pred_len: the length of prediction sequence
        :param w_levels: the number of wavelet level
        :param eps: a value added for numerical stability
        """
        super(WIN, self).__init__()
        self.num_features = num_features
        self.seq_len = seq_len
        self.pred_len = pred_len
        self.w_levels = w_levels
        self.eps = eps
        self._init_params()

    def forward(self, x, mode:str):
        if mode == 'norm':
            x = self._normalize(x)
        elif mode == 'denorm':
            x = self._denormalize(x)
        else:
            raise NotImplementedError
        return x

    def _init_params(self):
        # initialize WIN params
        self.linear = nn.ModuleList()
        for i in range(self.w_levels):
            self.linear.append(nn.Linear(self.seq_len, self.pred_len))

    def _normalize(self, x):
        if self.w_levels > 0:
            self.coeffs = swt(x, pywt.Wavelet('haar'), level=self.w_levels, axis=1)
            cA = self.coeffs[0]
            self.mean = torch.mean(cA, dim=1, keepdim=True).detach()
            cA = cA - self.mean
            self.std = torch.sqrt(torch.var(cA, dim=1, keepdim=True, unbiased=False) + self.eps).detach()
            cA = cA / self.std
            for i in range(1, self.w_levels+1):
                self.coeffs[i] = self.linear[i-1](self.coeffs[i].permute(0, 2, 1)).permute(0, 2, 1)
            x = cA
        else:
            self.mean = x.mean(1, keepdim=True).detach()
            x = x - self.mean
            self.std = torch.sqrt(torch.var(x, dim=1, keepdim=True, unbiased=False) + self.eps).detach()
            x = x / self.std
        return x

    def _denormalize(self, x):
        if self.w_levels > 0:
            x = x * (self.std[:, 0, :].unsqueeze(1).repeat(1, self.pred_len, 1))
            x = x + (self.mean[:, 0, :].unsqueeze(1).repeat(1, self.pred_len, 1))
            self.coeffs[0] = x
            x_out = iswt(self.coeffs, pywt.Wavelet('haar'), axis=1)
        else:
            x_out = x * (self.std[:, 0, :].unsqueeze(1).repeat(1, self.pred_len, 1))
            x_out = x_out + (self.mean[:, 0, :].unsqueeze(1).repeat(1, self.pred_len, 1))
        return x_out

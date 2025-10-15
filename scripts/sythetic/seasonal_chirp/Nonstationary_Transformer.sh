export CUDA_VISIBLE_DEVICES=1

model_name=Nonstationary_Transformer

for pred_len in 96 192 336 720
do
python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/synthetic/ \
  --data_path seasonal_chirp.csv \
  --model_id seasonal_chirp_$pred_len \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len 512 \
  --label_len 48 \
  --pred_len $pred_len \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 1 \
  --dec_in 1 \
  --c_out 1 \
  --des 'Exp' \
  --itr 1 \
  --p_hidden_dims 256 256 \
  --p_hidden_layers 2 \
  --d_model 128 \
  --inverse
done

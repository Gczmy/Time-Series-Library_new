export CUDA_VISIBLE_DEVICES=0

model_name=PatchTST
for pred_len in 12 24 48 96
do
python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/PEMS03/ \
  --data_path PEMS03_data.csv \
  --model_id PEMS03_${pred_len} \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len 12 \
  --label_len 6 \
  --pred_len $pred_len \
  --e_layers 1 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --n_heads 2 \
  --itr 1
done

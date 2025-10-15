
model_name=PatchTST

for pred_len in 96 192 336 720
do
python3 -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/synthetic/ \
  --data_path seasonal_trend.csv \
  --model_id seasonal_trend_$pred_len \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len 512 \
  --pred_len $pred_len \
  --train_epochs 100 \
  --enc_in 1 \
  --c_out 1 \
  --des 'Exp' \
  --itr 1 \
  --batch_size 16 \
  --learning_rate 0.00001 \
  --e_layers 1 \
  --d_layers 1 \
  --d_model 128 \
  --d_ff 256 \
  --inverse
done
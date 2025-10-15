
model_name=TimeMixer

seq_len=512
e_layers=2
down_sampling_layers=3
down_sampling_window=2
learning_rate=0.01
d_model=16
d_ff=32
train_epochs=100
patience=3
batch_size=16

for pred_len in 96 192 336 720
do
python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/synthetic/ \
  --data_path seasonal_chirp3.csv \
  --model_id seasonal_chirp3_$pred_len \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len 512 \
  --label_len 48 \
  --pred_len $pred_len \
  --e_layers $e_layers \
  --enc_in 1 \
  --c_out 1 \
  --des 'Exp' \
  --itr 1 \
  --d_model $d_model \
  --d_ff $d_ff \
  --learning_rate $learning_rate \
  --train_epochs $train_epochs \
  --patience $patience \
  --batch_size 16 \
  --down_sampling_layers $down_sampling_layers \
  --down_sampling_method avg \
  --down_sampling_window $down_sampling_window \
  --inverse
done

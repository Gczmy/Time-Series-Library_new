export CUDA_VISIBLE_DEVICES=0
model_name=SOFTS

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/illness/ \
  --data_path national_illness.csv \
  --model_id ili_36_24 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len 36 \
  --pred_len 24 \
  --e_layers 1 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --d_model 256 \
  --d_core 256 \
  --d_ff 256 \
  --learning_rate 0.0003 \
  --des 'Exp' \
  --itr 1

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/illness/ \
  --data_path national_illness.csv \
  --model_id ili_36_36 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len 36 \
  --pred_len 36 \
  --e_layers 1 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --d_model 256 \
  --d_core 256 \
  --d_ff 256 \
  --learning_rate 0.0003 \
  --des 'Exp' \
  --itr 1

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/illness/ \
  --data_path national_illness.csv \
  --model_id ili_36_48 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len 36 \
  --pred_len 48 \
  --e_layers 1 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --d_model 256 \
  --d_core 256 \
  --d_ff 512 \
  --learning_rate 0.0003 \
  --des 'Exp' \
  --itr 1

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/illness/ \
  --data_path national_illness.csv \
  --model_id ili_36_60 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len 36 \
  --pred_len 60 \
  --e_layers 1 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --d_model 256 \
  --d_core 256 \
  --d_ff 512 \
  --learning_rate 0.0003 \
  --des 'Exp' \
  --itr 1
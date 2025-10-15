model_name=SOFTS

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/exchange_rate/ \
  --data_path exchange_rate.csv \
  --model_id Exchange_512_96 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len 512 \
  --pred_len 96 \
  --e_layers 1 \
  --enc_in 8 \
  --dec_in 8 \
  --c_out 8 \
  --d_model 256 \
  --d_core 256 \
  --d_ff 256 \
  --learning_rate 0.0003 \
  --des 'Exp' \
  --itr 1

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/exchange_rate/ \
  --data_path exchange_rate.csv \
  --model_id Exchange_512_192 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len 512 \
  --pred_len 192 \
  --e_layers 1 \
  --enc_in 8 \
  --dec_in 8 \
  --c_out 8 \
  --d_model 256 \
  --d_core 256 \
  --d_ff 256 \
  --learning_rate 0.0003 \
  --des 'Exp' \
  --itr 1

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/exchange_rate/ \
  --data_path exchange_rate.csv \
  --model_id Exchange_512_336 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len 512 \
  --pred_len 336 \
  --e_layers 1 \
  --enc_in 8 \
  --dec_in 8 \
  --c_out 8 \
  --d_model 256 \
  --d_core 256 \
  --d_ff 512 \
  --learning_rate 0.0003 \
  --des 'Exp' \
  --itr 1

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/exchange_rate/ \
  --data_path exchange_rate.csv \
  --model_id Exchange_512_720 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len 512 \
  --pred_len 720 \
  --e_layers 1 \
  --enc_in 8 \
  --dec_in 8 \
  --c_out 8 \
  --d_model 256 \
  --d_core 256 \
  --d_ff 512 \
  --learning_rate 0.0003 \
  --des 'Exp' \
  --itr 1
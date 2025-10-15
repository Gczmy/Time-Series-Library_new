export CUDA_VISIBLE_DEVICES=0

model_name=CATS

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
  --d_layers 3 \
  --dec_in 7 \
  --des 'Exp' \
  --itr 1 \
  --d_model 256 \
  --d_ff 256 \
  --n_heads 16 \
  --QAM_end 0.2 \
  --batch_size 128

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
  --d_layers 3 \
  --dec_in 7 \
  --des 'Exp' \
  --itr 1 \
  --d_model 256 \
  --d_ff 256 \
  --n_heads 16 \
  --QAM_end 0.3 \
  --batch_size 128


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
  --d_layers 3 \
  --dec_in 7 \
  --des 'Exp' \
  --itr 1 \
  --d_model 256 \
  --d_ff 256 \
  --n_heads 16 \
  --QAM_end 0.5 \
  --batch_size 128



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
  --d_layers 3 \
  --dec_in 7 \
  --des 'Exp' \
  --itr 1 \
  --d_model 256 \
  --d_ff 256 \
  --n_heads 16 \
  --QAM_end 0.7 \
  --batch_size 128

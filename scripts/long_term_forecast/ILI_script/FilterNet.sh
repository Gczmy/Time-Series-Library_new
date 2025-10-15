export CUDA_VISIBLE_DEVICES=0

model_name=PaiFilter

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/illness/ \
  --data_path national_illness.csv \
  --model_id ili_36_24 \
  --model $model_name \
  --data custom \
  --features M \
  --enc_in 7 \
  --seq_len 36 \
  --pred_len 24 \
  --hidden_size 256 \
  --train_epochs 15 \
  --batch_size 16 \
  --patience 5 \
  --learning_rate 0.005 \
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
  --enc_in 7 \
  --seq_len 36 \
  --pred_len 36 \
  --hidden_size 128 \
  --train_epochs 15 \
  --batch_size 8 \
  --patience 5 \
  --learning_rate 0.001 \
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
  --enc_in 7 \
  --seq_len 36 \
  --pred_len 48 \
  --hidden_size 128 \
  --train_epochs 15 \
  --batch_size 64 \
  --patience 5 \
  --learning_rate 0.001 \
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
  --enc_in 7 \
  --seq_len 36 \
  --pred_len 60 \
  --hidden_size 256 \
  --train_epochs 15 \
  --batch_size 64 \
  --patience 5 \
  --learning_rate 0.001 \
  --des 'Exp' \
  --itr 1
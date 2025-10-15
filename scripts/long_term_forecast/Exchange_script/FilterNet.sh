export CUDA_VISIBLE_DEVICES=0

model_name=PaiFilter

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/exchange_rate/ \
  --data_path exchange_rate.csv \
  --model_id Exchange_512_96 \
  --model $model_name \
  --data custom \
  --features M \
  --enc_in 7 \
  --seq_len 512 \
  --pred_len 96 \
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
  --root_path ./dataset/exchange_rate/ \
  --data_path exchange_rate.csv \
  --model_id Exchange_512_192 \
  --model $model_name \
  --data custom \
  --features M \
  --enc_in 7 \
  --seq_len 512 \
  --pred_len 192 \
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
  --root_path ./dataset/exchange_rate/ \
  --data_path exchange_rate.csv \
  --model_id Exchange_512_336 \
  --model $model_name \
  --data custom \
  --features M \
  --enc_in 7 \
  --seq_len 512 \
  --pred_len 336 \
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
  --root_path ./dataset/exchange_rate/ \
  --data_path exchange_rate.csv \
  --model_id Exchange_512_720 \
  --model $model_name \
  --data custom \
  --features M \
  --enc_in 7 \
  --seq_len 512 \
  --pred_len 720 \
  --hidden_size 256 \
  --train_epochs 15 \
  --batch_size 64 \
  --patience 5 \
  --learning_rate 0.001 \
  --des 'Exp' \
  --itr 1
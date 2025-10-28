export CUDA_VISIBLE_DEVICES=0

model_name=CATS

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/ETT-small/ \
  --data_path ETTh2.csv \
  --model_id ETTh2_512_96 \
  --model $model_name \
  --data ETTh2 \
  --features M \
  --seq_len 512 \
  --pred_len 96 \
  --d_layers 3 \
  --dec_in 7 \
  --des 'Exp' \
  --itr 1 \
  --learning_rate 0.001 \
  --d_model 256 \
  --d_ff 512 \
  --n_heads 16 \
  --QAM_end 0.2 \
  --lradj type4 \
  --batch_size 256 \
  --train_epochs 10 \
  --query_independence

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/ETT-small/ \
  --data_path ETTh2.csv \
  --model_id ETTh2_512_192 \
  --model $model_name \
  --data ETTh2 \
  --features M \
  --seq_len 512 \
  --pred_len 192 \
  --d_layers 3 \
  --dec_in 7 \
  --des 'Exp' \
  --itr 1 \
  --learning_rate 0.001 \
  --d_model 256 \
  --d_ff 512 \
  --n_heads 16 \
  --QAM_end 0.3 \
  --lradj type4 \
  --batch_size 256 \
  --train_epochs 10 \
  --query_independence


python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/ETT-small/ \
  --data_path ETTh2.csv \
  --model_id ETTh2_512_336 \
  --model $model_name \
  --data ETTh2 \
  --features M \
  --seq_len 512 \
  --pred_len 336 \
  --d_layers 3 \
  --dec_in 7 \
  --des 'Exp' \
  --itr 1 \
  --learning_rate 0.001 \
  --d_model 256 \
  --d_ff 512 \
  --n_heads 16 \
  --QAM_end 0.5 \
  --lradj type4 \
  --batch_size 256 \
  --train_epochs 10 \
  --query_independence



python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/ETT-small/ \
  --data_path ETTh2.csv \
  --model_id ETTh2_512_720 \
  --model $model_name \
  --data ETTh2 \
  --features M \
  --seq_len 512 \
  --pred_len 720 \
  --d_layers 3 \
  --dec_in 7 \
  --des 'Exp' \
  --itr 1 \
  --learning_rate 0.001 \
  --d_model 256 \
  --d_ff 512 \
  --n_heads 16 \
  --QAM_end 0.7 \
  --lradj type4 \
  --batch_size 256 \
  --train_epochs 10 \
  --query_independence
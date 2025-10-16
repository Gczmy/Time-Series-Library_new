export CUDA_VISIBLE_DEVICES=0
model_name=SOFTS

python -u run.py \
  --is_training 1 \
  --root_path ./dataset/ETT-small/ \
  --data_path ETTm2.csv \
  --model_id ETTm2_512_96 \
  --model $model_name \
  --data ETTm2 \
  --features M \
  --seq_len 512 \
  --pred_len 96 \
  --e_layers 2 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --d_model 256 \
  --d_core 256 \
  --d_ff 128 \
  --learning_rate 0.0003 \
  --lradj cosine \
  --train_epochs 20 \
  --patience 3 \
  --des 'Exp' \
  --itr 1

python -u run.py \
  --is_training 1 \
  --root_path ./dataset/ETT-small/ \
  --data_path ETTm2.csv \
  --model_id ETTm2_512_192 \
  --model $model_name \
  --data ETTm2 \
  --features M \
  --seq_len 512 \
  --pred_len 192 \
  --e_layers 2 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --d_model 256 \
  --d_core 256 \
  --d_ff 128 \
  --learning_rate 0.0003 \
  --lradj cosine \
  --train_epochs 20 \
  --patience 3 \
  --des 'Exp' \
  --itr 1

python -u run.py \
  --is_training 1 \
  --root_path ./dataset/ETT-small/ \
  --data_path ETTm2.csv \
  --model_id ETTm2_512_336 \
  --model $model_name \
  --data ETTm2 \
  --features M \
  --seq_len 512 \
  --pred_len 336 \
  --e_layers 2 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --d_model 256 \
  --d_core 256 \
  --d_ff 128 \
  --learning_rate 0.0003 \
  --lradj cosine \
  --train_epochs 20 \
  --patience 3 \
  --des 'Exp' \
  --itr 1

python -u run.py \
  --is_training 1 \
  --root_path ./dataset/ETT-small/ \
  --data_path ETTm2.csv \
  --model_id ETTm2_512_720 \
  --model $model_name \
  --data ETTm2 \
  --features M \
  --seq_len 512 \
  --pred_len 720 \
  --e_layers 2 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --d_model 256 \
  --d_core 256 \
  --d_ff 128 \
  --learning_rate 0.0003 \
  --lradj cosine \
  --train_epochs 20 \
  --patience 3 \
  --des 'Exp' \
  --itr 1
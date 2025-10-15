
model_name=iTransformer

for pred_len in 96 192 336 720
do
python3 -u run.py \
  --task_name long_term_forecast \
  --is_training 0 \
  --root_path ./dataset/archive/ \
  --data_path AA.csv \
  --model_id AA_$pred_len \
  --model $model_name \
  --data custom \
  --features S \
  --target 'Open' \
  --seq_len 512 \
  --pred_len $pred_len \
  --train_epochs 100 \
  --enc_in 1 \
  --c_out 1 \
  --des 'Exp' \
  --itr 1 \
  --batch_size 32 \
  --learning_rate 0.0001 \
  --e_layers 1 \
  --d_layers 1 \
  --factor 1 \
  --d_model 128 \
  --d_ff 2048
done
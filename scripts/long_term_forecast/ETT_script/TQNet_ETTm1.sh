export CUDA_VISIBLE_DEVICES=0
model_name=TQNet

root_path_name=./dataset/ETT-small/
data_path_name=ETTm1.csv
model_id_name=ETTm1
data_name=ETTm1

seq_len=512
for pred_len in 96 192 336 720
do
    python -u run.py \
      --task_name long_term_forecast \
      --is_training 1 \
      --root_path $root_path_name \
      --data_path $data_path_name \
      --model_id $model_id_name'_'$seq_len'_'$pred_len \
      --model $model_name \
      --data $data_name \
      --features M \
      --seq_len $seq_len \
      --pred_len $pred_len \
      --enc_in 7 \
      --cycle 96 \
      --train_epochs 30 \
      --patience 5 \
      --dropout 0.5 \
      --itr 1 --batch_size 256 --learning_rate 0.001
done

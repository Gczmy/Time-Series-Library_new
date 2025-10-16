export CUDA_VISIBLE_DEVICES=0
model_name=TQNet

root_path_name=./dataset/electricity/
data_path_name=electricity.csv
model_id_name=ECL
data_name=custom


seq_len=512
for pred_len in 96 192 336 720
do
  python -u run.py \
    --is_training 1 \
    --root_path $root_path_name \
    --data_path $data_path_name \
    --model_id $model_id_name'_'$seq_len'_'$pred_len \
    --model $model_name \
    --data $data_name \
    --features M \
    --seq_len $seq_len \
    --pred_len $pred_len \
    --enc_in 321 \
    --cycle 168 \
    --train_epochs 30 \
    --patience 5 \
    --itr 1 --batch_size 32 --learning_rate 0.003
done
model_name=CycleNet

root_path_name=./dataset/illness/
data_path_name=national_illness.csv
model_id_name=ili_36_24
data_name=custom


model_type='linear'
seq_len=36
for pred_len in 24 36 48 60
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
    --cycle 24 \
    --model_type $model_type \
    --patience 5 \
    --itr 1 --batch_size 256 --learning_rate 0.01
done


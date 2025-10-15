model_name=TQNet

root_path_name=./dataset/illness/
data_path_name=national_illness.csv
model_id_name=ili_36_24
data_name=custom


seq_len=36
for pred_len in 24 36 48 60
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
    --enc_in 7 \
    --cycle 24 \
    --patience 5 \
    --dropout 0.5 \
    --itr 1 --batch_size 256 --learning_rate 0.001
done


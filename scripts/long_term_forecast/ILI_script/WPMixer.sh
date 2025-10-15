
# Set the GPU to use
export CUDA_VISIBLE_DEVICES=0

# Model name
model_name=WPMixer

# Datasets and prediction lengths
seq_lens=(36 36 36 36)
pred_lens=(24 36 48 60)
patch_lens=(16 16 16 16)
d_models=(256 256 256 128)

# Loop over datasets and prediction lengths
for i in "${!pred_lens[@]}"; do
	python -u run.py \
		--is_training 1 \
		--root_path ./dataset/illness/ \
		--data_path national_illness.csv \
		--model_id ili \
		--model $model_name \
		--task_name long_term_forecast \
		--data custom \
		--seq_len ${seq_lens[$i]} \
		--pred_len ${pred_lens[$i]} \
		--label_len 0 \
		--d_model ${d_models[$i]} \
		--patch_len ${patch_lens[$i]} \
		--batch_size 256 \
		--learning_rate 0.0002 \
		--lradj type3
done

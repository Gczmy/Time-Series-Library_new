model_array=('iTransformer' 'PatchTST' 'Autoformer' 'Crossformer' 'DLinear' 'FiLM' 'Informer' 'MICN' 'Nonstationary_Transformer' 'Pyraformer' 'TimeMixer' 'TimesNet' 'TSMixer')

for model_i in 10 11 12
do
export CUDA_VISIBLE_DEVICES=1
  model=${model_array[$model_i]}
  bash ./scripts/sythetic/seasonal_chirp3/$model.sh
done

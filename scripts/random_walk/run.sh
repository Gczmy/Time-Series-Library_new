model_array=('iTransformer' 'PatchTST' 'Autoformer' 'Crossformer' 'DLinear' 'FiLM' 'Informer' 'MICN' 'Nonstationary_Transformer' 'Pyraformer' 'TimeMixer' 'TimesNet' 'TSMixer')

for model_i in 0 1
do
export CUDA_VISIBLE_DEVICES=1
  model=${model_array[$model_i]}
  bash ./scripts/random_walk/$model.sh
done

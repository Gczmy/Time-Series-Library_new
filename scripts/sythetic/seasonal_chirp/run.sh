model_array=('Autoformer' 'Crossformer' 'DLinear' 'FiLM' 'Informer' 'MICN' 'Nonstationary_Transformer' 'Pyraformer' 'TimeMixer' 'TimesNet' 'TSMixer')

for model_i in 0 1 3 4 5 6 7 8 9 10
do
  model=${model_array[$model_i]}
  bash ./scripts/sythetic/seasonal_chirp/$model.sh
done

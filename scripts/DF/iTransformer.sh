export CUDA_VISIBLE_DEVICES=0

model_name=iTransformer

city_names=("HaNoi" "HaiPhong" "QuangNinh" "NamDinh" "ThaiBinh" "BacGiang" "NinhBinh" "PhuTho"
    "VinhPhuc" "QuangNam" "QuangNgai" "PhuYen" "KonTum" "GiaLai" "NinhThuan" "BinhThuan"
    "TayNinh" "BinhPhuoc" "BinhDinh" "DaNang" "KhanhHoa" "LamDong" "NgheAn" "QuangBinh"
    "QuangTri" "AnGiang" "TienGiang" "CanTho" "TraVinh" "KienGiang" "SocTrang" "BacLieu"
    "CaMau" "LongAn" "BacCan" "CaoBang" "HaGiang" "HaiDuong" "HoaBinh" "HungYen"
    "LaiChau" "LangSon" "LaoCai" "SonLa" "ThaiNguyen" "TuyenQuang" "YenBai" "BRVungTau"
    "DacNong" "DakLak" "DienBien" "HaTinh" "ThanhHoa" "TTHue" "DongThap")

for city_i in 0
# ${city_names[@]}
do
city=${city_names[city_i]}
python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/DF_csv/ \
  --data_path ${city}.csv \
  --model_id ${city}_3_1 \
  --model $model_name \
  --data DF \
  --features S \
  --target 'Dengue_fever_rates' \
  --seq_len 3 \
  --label_len 0 \
  --pred_len 1 \
  --e_layers 1 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 18 \
  --dec_in 18 \
  --c_out 18 \
  --des "Exp" \
  --d_model 64 \
  --d_ff 64 \
  --batch_size 1 \
  --learning_rate 0.001 \
  --itr 1
done

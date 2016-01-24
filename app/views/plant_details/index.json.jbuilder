json.array!(@plant_details) do |plant_detail|
  json.extract! plant_detail, :id, :tsn, :common_name, :native, :invasive, :typical_habitat, :typical_flowering_time, :typical_fruiting_time, :growth_habit, :annual_biennial_perennial, :toxicity, :medical_uses, :culinary_uses, :ornamental_uses, :other_uses, :status_local, :status_state, :status_us, :status_global, :ecr, :hhcp, :leb, :uwb, :wsp, :ar
  json.url plant_detail_url(plant_detail, format: :json)
end

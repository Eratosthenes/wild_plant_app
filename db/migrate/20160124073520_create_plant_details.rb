class CreatePlantDetails < ActiveRecord::Migration
  def change
    create_table :plant_details do |t|
      t.integer :tsn
      t.string :common_name
      t.string :native
      t.string :invasive
      t.string :typical_habitat
      t.string :typical_flowering_time
      t.string :typical_fruiting_time
      t.string :growth_habit
      t.string :annual_biennial_perennial
      t.string :toxicity
      t.string :medical_uses
      t.string :culinary_uses
      t.string :ornamental_uses
      t.string :other_uses
      t.string :status_local
      t.string :status_state
      t.string :status_us
      t.string :status_global
      t.string :ecr
      t.string :hhcp
      t.string :leb
      t.string :uwb
      t.string :wsp
      t.string :ar

      t.timestamps null: false
    end
  end
end

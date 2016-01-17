class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :name
      t.string :leaf_type
      t.string :leaf_attachment
      t.string :leaf_arrangement
      t.string :leaf_veins
      t.string :leaf_edge
      t.string :flower_type
      t.string :flower_attachment
      t.string :flower_arrangement
      t.string :flower_symmetry
      t.string :flower_petal_number
      t.string :flower_petal_color
      t.string :fruit_type
      t.string :fruit_attachment
      t.string :fruit_arrangement
      t.string :fruit_color
      t.string :bark_attachment
      t.string :bark_texture
      t.string :bark_color
      t.string :thorn_type
      t.string :thorn_arrangement
      t.string :thorn_stiffness
      t.string :tendril_type
      t.string :tendril_attachment
      t.string :tendril_arrangement
      t.integer :tsn

      t.timestamps null: false
    end
  end
end

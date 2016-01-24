# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

i=0
Plant.delete_all
#File.foreach('/Users/nathanrapport/Desktop/Programs/Ruby/projects/wild_plant_project/6-CHARACTERISTICS.txt') do |line|
File.foreach('public/6-CHARACTERISTICS.txt') do |line|
  tsn,name,leaf_type,leaf_arrangement,leaf_attachment,leaf_edge,leaf_veins,flower_type,flower_arrangement,flower_attachment,flower_symmetry,flower_petal_number,flower_petal_color,fruit_type,fruit_arrangement,fruit_attachment,fruit_color,bark_attachment,bark_texture,bark_color,thorn_type,thorn_arrangement,thorn_stiffness,tendril_type,tendril_arrangement,tendril_attachment = line.chomp.gsub(/\"/,'').split(/\t/)[0...-1]
  tsn = tsn.to_i
  Plant.create!(:tsn => tsn, :name => name, :leaf_type => leaf_type, :leaf_arrangement => leaf_arrangement,
  :leaf_attachment => leaf_attachment, :leaf_edge => leaf_edge, :leaf_veins => leaf_veins, :flower_type => flower_type,
  :flower_arrangement => flower_arrangement, :flower_attachment => flower_attachment, :flower_symmetry => flower_symmetry,
  :flower_petal_number => flower_petal_number, :flower_petal_color => flower_petal_color, :fruit_type => fruit_type,
  :fruit_arrangement => fruit_arrangement, :fruit_attachment => fruit_attachment, :fruit_color => fruit_color,
  :bark_attachment => bark_attachment, :bark_texture => bark_texture, :bark_color => bark_color,
  :thorn_type => thorn_type, :thorn_arrangement => thorn_arrangement, :thorn_stiffness => thorn_stiffness,
  :tendril_type => tendril_type, :tendril_arrangement => tendril_arrangement, :tendril_attachment => tendril_attachment) unless i==0
  i+=1
end
puts i

content = File.readlines('public/7-RELATIONSHIPS.txt')

col_names = ["tsn", "common_name", "native", "invasive", "typical_habitat", "typical_flowering_time",
"typical_fruiting_time", "growth_habit", "annual_biennial_perennial", "toxicity",
"medical_uses", "culinary_uses", "ornamental_uses", "other_uses", "status_local",
"status_state", "status_us", "status_global", "ecr", "hhcp", "leb", "uwb", "wsp", "ar"]

PlantDetail.delete_all
content.drop(1).each do |line|
  line = line.chomp.gsub('"','').split(/\t/)
  line[0] = line[0].to_i
  PlantDetail.create!(Hash[col_names.zip(line)])
end

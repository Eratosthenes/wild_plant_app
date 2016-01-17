class Search < ActiveRecord::Base

  def search_plants
    plants = Plant.all

    plants = plants.where(["name LIKE ?","%#{name}%"]) if name.present?
    plants = plants.where(["tsn LIKE ?", tsn]) if tsn.present?

    plants = plants.where(["leaf_type LIKE ?","%#{leaf_type}%"]) if leaf_type.present?
    plants = plants.where(["leaf_attachment LIKE ?","%#{leaf_attachment}%"]) if leaf_attachment.present?
    plants = plants.where(["leaf_arrangement LIKE ?","%#{leaf_arrangement}%"]) if leaf_arrangement.present?
    plants = plants.where(["leaf_veins LIKE ?","%#{leaf_veins}%"]) if leaf_veins.present?
    plants = plants.where(["leaf_edge LIKE ?","%#{leaf_edge}%"]) if leaf_edge.present?

    plants = plants.where(["bark_attachment LIKE ?","%#{bark_attachment}%"]) if bark_attachment.present?
    plants = plants.where(["bark_texture LIKE ?","%#{bark_texture}%"]) if bark_texture.present?
    plants = plants.where(["bark_color LIKE ?","%#{bark_color}%"]) if bark_color.present?

    plants
  end
end

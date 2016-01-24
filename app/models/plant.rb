class Plant < ActiveRecord::Base

  def get_details
    PlantDetail.joins('LEFT OUTER JOIN plants ON plant_details.tsn = plants.tsn')
  end
end

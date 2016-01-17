class SearchesController < ApplicationController

  def new
    @search = Search.new
  end

  def create
    @search = Search.create(search_params)
    redirect_to @search
  end

  def show
    @search = Search.find(params[:id])
    @plants = @search.search_plants
  end

  private
  def search_params
      params.require(:search).permit(:name, :leaf_type, :leaf_attachment, :leaf_arrangement, :leaf_veins, :leaf_edge, :flower_type, :flower_attachment, :flower_arrangement, :flower_symmetry, :flower_petal_number, :flower_petal_color, :fruit_type, :fruit_attachment, :fruit_arrangement, :fruit_color, :bark_attachment, :bark_texture, :bark_color, :thorn_type, :thorn_arrangement, :thorn_stiffness, :tendril_type, :tendril_attachment, :tendril_arrangement, :tsn)
  end
end

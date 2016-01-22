class PagesController < ApplicationController

  def show
    @plants = Plant.all
    render "/pages/#{params[:page]}"
  end
end

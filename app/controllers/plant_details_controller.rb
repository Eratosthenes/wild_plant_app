class PlantDetailsController < ApplicationController
  before_action :set_plant_detail, only: [:show, :edit, :update, :destroy]

  # GET /plant_details
  # GET /plant_details.json
  def index
    @plant_details = PlantDetail.all
  end

  # GET /plant_details/1
  # GET /plant_details/1.json
  def show
  end

  # GET /plant_details/new
  def new
    @plant_detail = PlantDetail.new
  end

  # GET /plant_details/1/edit
  def edit
  end

  # POST /plant_details
  # POST /plant_details.json
  def create
    @plant_detail = PlantDetail.new(plant_detail_params)

    respond_to do |format|
      if @plant_detail.save
        format.html { redirect_to @plant_detail, notice: 'Plant detail was successfully created.' }
        format.json { render :show, status: :created, location: @plant_detail }
      else
        format.html { render :new }
        format.json { render json: @plant_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plant_details/1
  # PATCH/PUT /plant_details/1.json
  def update
    respond_to do |format|
      if @plant_detail.update(plant_detail_params)
        format.html { redirect_to @plant_detail, notice: 'Plant detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @plant_detail }
      else
        format.html { render :edit }
        format.json { render json: @plant_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plant_details/1
  # DELETE /plant_details/1.json
  def destroy
    @plant_detail.destroy
    respond_to do |format|
      format.html { redirect_to plant_details_url, notice: 'Plant detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plant_detail
      @plant_detail = PlantDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plant_detail_params
      params.require(:plant_detail).permit(:tsn, :common_name, :native, :invasive, :typical_habitat, :typical_flowering_time, :typical_fruiting_time, :growth_habit, :annual_biennial_perennial, :toxicity, :medical_uses, :culinary_uses, :ornamental_uses, :other_uses, :status_local, :status_state, :status_us, :status_global, :ecr, :hhcp, :leb, :uwb, :wsp, :ar)
    end
end

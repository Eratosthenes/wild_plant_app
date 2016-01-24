require 'test_helper'

class PlantDetailsControllerTest < ActionController::TestCase
  setup do
    @plant_detail = plant_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plant_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plant_detail" do
    assert_difference('PlantDetail.count') do
      post :create, plant_detail: { annual_biennial_perennial: @plant_detail.annual_biennial_perennial, ar: @plant_detail.ar, common_name: @plant_detail.common_name, culinary_uses: @plant_detail.culinary_uses, ecr: @plant_detail.ecr, growth_habit: @plant_detail.growth_habit, hhcp: @plant_detail.hhcp, invasive: @plant_detail.invasive, leb: @plant_detail.leb, medical_uses: @plant_detail.medical_uses, native: @plant_detail.native, ornamental_uses: @plant_detail.ornamental_uses, other_uses: @plant_detail.other_uses, status_global: @plant_detail.status_global, status_local: @plant_detail.status_local, status_state: @plant_detail.status_state, status_us: @plant_detail.status_us, toxicity: @plant_detail.toxicity, tsn: @plant_detail.tsn, typical_flowering_time: @plant_detail.typical_flowering_time, typical_fruiting_time: @plant_detail.typical_fruiting_time, typical_habitat: @plant_detail.typical_habitat, uwb: @plant_detail.uwb, wsp: @plant_detail.wsp }
    end

    assert_redirected_to plant_detail_path(assigns(:plant_detail))
  end

  test "should show plant_detail" do
    get :show, id: @plant_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @plant_detail
    assert_response :success
  end

  test "should update plant_detail" do
    patch :update, id: @plant_detail, plant_detail: { annual_biennial_perennial: @plant_detail.annual_biennial_perennial, ar: @plant_detail.ar, common_name: @plant_detail.common_name, culinary_uses: @plant_detail.culinary_uses, ecr: @plant_detail.ecr, growth_habit: @plant_detail.growth_habit, hhcp: @plant_detail.hhcp, invasive: @plant_detail.invasive, leb: @plant_detail.leb, medical_uses: @plant_detail.medical_uses, native: @plant_detail.native, ornamental_uses: @plant_detail.ornamental_uses, other_uses: @plant_detail.other_uses, status_global: @plant_detail.status_global, status_local: @plant_detail.status_local, status_state: @plant_detail.status_state, status_us: @plant_detail.status_us, toxicity: @plant_detail.toxicity, tsn: @plant_detail.tsn, typical_flowering_time: @plant_detail.typical_flowering_time, typical_fruiting_time: @plant_detail.typical_fruiting_time, typical_habitat: @plant_detail.typical_habitat, uwb: @plant_detail.uwb, wsp: @plant_detail.wsp }
    assert_redirected_to plant_detail_path(assigns(:plant_detail))
  end

  test "should destroy plant_detail" do
    assert_difference('PlantDetail.count', -1) do
      delete :destroy, id: @plant_detail
    end

    assert_redirected_to plant_details_path
  end
end

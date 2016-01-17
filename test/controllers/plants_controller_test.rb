require 'test_helper'

class PlantsControllerTest < ActionController::TestCase
  setup do
    @plant = plants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plant" do
    assert_difference('Plant.count') do
      post :create, plant: { bark_attachment: @plant.bark_attachment, bark_color: @plant.bark_color, bark_texture: @plant.bark_texture, flower_arrangement: @plant.flower_arrangement, flower_attachment: @plant.flower_attachment, flower_petal_color: @plant.flower_petal_color, flower_petal_number: @plant.flower_petal_number, flower_symmetry: @plant.flower_symmetry, flower_type: @plant.flower_type, fruit_arrangement: @plant.fruit_arrangement, fruit_attachment: @plant.fruit_attachment, fruit_color: @plant.fruit_color, fruit_type: @plant.fruit_type, leaf_arrangement: @plant.leaf_arrangement, leaf_attachment: @plant.leaf_attachment, leaf_edge: @plant.leaf_edge, leaf_type: @plant.leaf_type, leaf_veins: @plant.leaf_veins, name: @plant.name, tendril_arrangement: @plant.tendril_arrangement, tendril_attachment: @plant.tendril_attachment, tendril_type: @plant.tendril_type, thorn_arrangement: @plant.thorn_arrangement, thorn_stiffness: @plant.thorn_stiffness, thorn_type: @plant.thorn_type, tsn: @plant.tsn }
    end

    assert_redirected_to plant_path(assigns(:plant))
  end

  test "should show plant" do
    get :show, id: @plant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @plant
    assert_response :success
  end

  test "should update plant" do
    patch :update, id: @plant, plant: { bark_attachment: @plant.bark_attachment, bark_color: @plant.bark_color, bark_texture: @plant.bark_texture, flower_arrangement: @plant.flower_arrangement, flower_attachment: @plant.flower_attachment, flower_petal_color: @plant.flower_petal_color, flower_petal_number: @plant.flower_petal_number, flower_symmetry: @plant.flower_symmetry, flower_type: @plant.flower_type, fruit_arrangement: @plant.fruit_arrangement, fruit_attachment: @plant.fruit_attachment, fruit_color: @plant.fruit_color, fruit_type: @plant.fruit_type, leaf_arrangement: @plant.leaf_arrangement, leaf_attachment: @plant.leaf_attachment, leaf_edge: @plant.leaf_edge, leaf_type: @plant.leaf_type, leaf_veins: @plant.leaf_veins, name: @plant.name, tendril_arrangement: @plant.tendril_arrangement, tendril_attachment: @plant.tendril_attachment, tendril_type: @plant.tendril_type, thorn_arrangement: @plant.thorn_arrangement, thorn_stiffness: @plant.thorn_stiffness, thorn_type: @plant.thorn_type, tsn: @plant.tsn }
    assert_redirected_to plant_path(assigns(:plant))
  end

  test "should destroy plant" do
    assert_difference('Plant.count', -1) do
      delete :destroy, id: @plant
    end

    assert_redirected_to plants_path
  end
end

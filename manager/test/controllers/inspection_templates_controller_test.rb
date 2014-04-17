require 'test_helper'

class InspectionTemplatesControllerTest < ActionController::TestCase
  setup do
    @inspection_template = inspection_templates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inspection_templates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inspection_template" do
    assert_difference('InspectionTemplate.count') do
      post :create, inspection_template: {  }
    end

    assert_redirected_to inspection_template_path(assigns(:inspection_template))
  end

  test "should show inspection_template" do
    get :show, id: @inspection_template
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @inspection_template
    assert_response :success
  end

  test "should update inspection_template" do
    patch :update, id: @inspection_template, inspection_template: {  }
    assert_redirected_to inspection_template_path(assigns(:inspection_template))
  end

  test "should destroy inspection_template" do
    assert_difference('InspectionTemplate.count', -1) do
      delete :destroy, id: @inspection_template
    end

    assert_redirected_to inspection_templates_path
  end
end

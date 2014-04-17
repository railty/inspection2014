require 'test_helper'

class AttrTemplatesControllerTest < ActionController::TestCase
  setup do
    @attr_template = attr_templates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:attr_templates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create attr_template" do
    assert_difference('AttrTemplate.count') do
      post :create, attr_template: {  }
    end

    assert_redirected_to attr_template_path(assigns(:attr_template))
  end

  test "should show attr_template" do
    get :show, id: @attr_template
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @attr_template
    assert_response :success
  end

  test "should update attr_template" do
    patch :update, id: @attr_template, attr_template: {  }
    assert_redirected_to attr_template_path(assigns(:attr_template))
  end

  test "should destroy attr_template" do
    assert_difference('AttrTemplate.count', -1) do
      delete :destroy, id: @attr_template
    end

    assert_redirected_to attr_templates_path
  end
end

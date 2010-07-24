require 'test_helper'

class AlumnosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alumnos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alumno" do
    assert_difference('Alumno.count') do
      post :create, :alumno => { }
    end

    assert_redirected_to alumno_path(assigns(:alumno))
  end

  test "should show alumno" do
    get :show, :id => alumnos(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => alumnos(:one).to_param
    assert_response :success
  end

  test "should update alumno" do
    put :update, :id => alumnos(:one).to_param, :alumno => { }
    assert_redirected_to alumno_path(assigns(:alumno))
  end

  test "should destroy alumno" do
    assert_difference('Alumno.count', -1) do
      delete :destroy, :id => alumnos(:one).to_param
    end

    assert_redirected_to alumnos_path
  end
end

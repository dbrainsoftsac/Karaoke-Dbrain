require 'test_helper'

class UsuariosControllerTest < ActionController::TestCase
  setup do
    @usuario = usuarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usuarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usuario" do
    assert_difference('Usuario.count') do
      post :create, usuario: { TipoUsuario_id: @usuario.TipoUsuario_id, email: @usuario.email, no_apellido_materno: @usuario.no_apellido_materno, no_apellido_paterno: @usuario.no_apellido_paterno, no_dni: @usuario.no_dni, no_usuario: @usuario.no_usuario }
    end

    assert_redirected_to usuario_path(assigns(:usuario))
  end

  test "should show usuario" do
    get :show, id: @usuario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usuario
    assert_response :success
  end

  test "should update usuario" do
    patch :update, id: @usuario, usuario: { TipoUsuario_id: @usuario.TipoUsuario_id, email: @usuario.email, no_apellido_materno: @usuario.no_apellido_materno, no_apellido_paterno: @usuario.no_apellido_paterno, no_dni: @usuario.no_dni, no_usuario: @usuario.no_usuario }
    assert_redirected_to usuario_path(assigns(:usuario))
  end

  test "should destroy usuario" do
    assert_difference('Usuario.count', -1) do
      delete :destroy, id: @usuario
    end

    assert_redirected_to usuarios_path
  end
end

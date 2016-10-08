json.extract! usuario, :id, :no_usuario, :TipoUsuario_id, :no_apellido_paterno, :no_apellido_materno, :no_dni, :email, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
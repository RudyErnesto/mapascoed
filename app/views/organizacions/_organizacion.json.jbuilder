json.extract! organizacion, :id, :nombre, :numerocontacto, :telefono, :correo, :estado, :created_at, :updated_at
json.url organizacion_url(organizacion, format: :json)

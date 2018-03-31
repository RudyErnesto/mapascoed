json.extract! funcionario, :id, :nombre, :apellido, :celular, :telefono, :correo, :created_at, :updated_at
json.url funcionario_url(funcionario, format: :json)

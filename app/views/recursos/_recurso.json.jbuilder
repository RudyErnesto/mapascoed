json.extract! recurso, :id, :nombre, :clase, :tipo, :matricula, :estado, :created_at, :updated_at
json.url recurso_url(recurso, format: :json)

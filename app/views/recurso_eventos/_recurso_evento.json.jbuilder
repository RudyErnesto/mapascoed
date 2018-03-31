json.extract! recurso_evento, :id, :solicitado, :fechapedido, :clase, :tipo, :fechallegada, :institucion, :matricula, :numeropersonas, :estado, :asignadoa, :desmovilizadopor, :fechadesmovilizacion, :observaciones, :created_at, :updated_at
json.url recurso_evento_url(recurso_evento, format: :json)

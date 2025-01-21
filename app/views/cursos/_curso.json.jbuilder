json.extract! curso, :id, :nome_curso, :creditos, :departamento_id, :created_at, :updated_at
json.url curso_url(curso, format: :json)

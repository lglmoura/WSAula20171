#json.array! @disciplinas, partial: 'disciplinas/disciplina', as: :disciplina


json.disciplina(@disciplinas) do |disciplina|
  json.extract! disciplina, :id, :nome, :sigla, :periodo, :professor_id
  json.url disciplina_url(disciplina, format: :json)
end

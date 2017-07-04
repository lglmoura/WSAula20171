#json.array! @professores, partial: 'professores/professor', as: :professor

json.professor(@professores) do |professor|
  json.extract! professor, :id, :nome, :endereco, :telefone
  json.url professor_url(professor, format: :json)
end

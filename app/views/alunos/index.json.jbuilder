#json.array! @alunos, partial: 'alunos/aluno', as: :aluno

json.aluno(@alunos) do |aluno|
  json.extract! aluno, :id, :nome, :matricula, :endereco, :tefefone, :email, :disciplina_id
  json.url aluno_url(aluno, format: :json)
end

json.extract! aluno, :id, :matricula, :nome, :endereco, :email, :tefefone, :disciplina_id, :created_at, :updated_at
json.url aluno_url(aluno, format: :json)

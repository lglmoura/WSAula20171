feature 'gerenciar Alunos' do

  before(:each) do
    @professor = create(:professor, nome: "Joao")
    @disciplina = create(:disciplina, nome: "Matematica", professor: @professor)
  end


  let(:dados) do {
    matricula: "111111",
    nome: "Matematica",
    endereco: "mat001",
    email: "xxx@cxxxxx",
    disciplina: "Matematica"
   }
  end

  scenario 'incluir aluno' do #, :js => true  do
    visit new_aluno_path
    preencher(dados)
    click_button 'Salvar'
    verificar(dados)

  end

  scenario 'alterar aluno' do #, :js => true  do

    aluno = FactoryGirl.create(:aluno, disciplina: @disciplina )

    visit edit_aluno_path(aluno)
    preencher(dados)
    click_button 'Salvar'
    verificar(dados)


  end

  scenario 'excluir aluno' do #, :js => true  do

    aluno = FactoryGirl.create(:aluno, disciplina: @disciplina)
    visit alunos_path

    click_link 'Excluir'

  end

  def preencher(dados)

    fill_in 'Nome',  with: dados[:nome]
    fill_in 'Matricula',  with: dados[:matricula]
    fill_in 'Endereço', with: dados[:endereco]
    fill_in 'Email', with: dados[:email]
    select dados[:disciplina], from: "Disciplina"


  end

  def verificar(dados)

    page.should have_content "Nome: #{dados[:nome]}"
    page.should have_content "Matricula: #{dados[:matricula]}"
    page.should have_content "Endereço: #{dados[:endereco]}"
    page.should have_content "Email: #{dados[:email]}"
    page.should have_content "Disciplina: #{dados[:disciplina]}"

  end

end

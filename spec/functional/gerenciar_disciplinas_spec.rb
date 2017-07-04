feature 'gerenciar Disciplinas' do

  before(:each) do
    @professor = create(:professor, nome: "Joao")
  end


  let(:dados) do {

    nome: "Matematica",
    sigla: "mat001",
    periodo: "100",
    professor: "Joao"
   }
  end

  scenario 'incluir disciplina' do #, :js => true  do
    visit new_disciplina_path
    preencher(dados)
    click_button 'Salvar'
    verificar(dados)

  end

  scenario 'alterar disciplina' do #, :js => true  do

    disciplina = FactoryGirl.create(:disciplina, professor: @professor )

    visit edit_disciplina_path(disciplina)
    preencher(dados)
    click_button 'Salvar'
    verificar(dados)


  end

  scenario 'excluir disciplina' do #, :js => true  do

    disciplina = FactoryGirl.create(:disciplina, professor: @professor)
    visit disciplinas_path

    click_link 'Excluir'

  end

  def preencher(dados)

    fill_in 'Nome',  with: dados[:nome]
    fill_in 'Sigla',  with: dados[:sigla]
    fill_in 'Periodo', with: dados[:periodo]
    select dados[:professor], from: "Professor"


  end

  def verificar(dados)

    page.should have_content "Nome: #{dados[:nome]}"
    page.should have_content "Sigla: #{dados[:sigla]}"
    page.should have_content "Periodo: #{dados[:periodo]}"
    page.should have_content "Professor: #{dados[:professor]}"

  end

end

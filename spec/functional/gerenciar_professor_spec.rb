# coding: utf-8

feature 'gerenciar Profesor' do

  scenario 'incluir Profesor' do

    visit new_professor_path
    preencher_e_verificar_professor
  end

  scenario 'alterar Profesor' do

    professor = FactoryGirl.create(:professor)
    visit edit_professor_path(professor)
    preencher_e_verificar_professor

  end

   scenario 'excluir professor' do

    professor = FactoryGirl.create(:professor)
    visit professores_path
    click_link 'Excluir'

  end

  def preencher_e_verificar_professor

      fill_in 'Nome',     :with => "Luiz"
      fill_in 'Endereço',  :with => "Rua zero"
      fill_in 'Telefone',     :with => "400"

      click_button 'Salvar'

      expect(page).to have_content 'Nome: Luiz'
      expect(page).to have_content 'Endereço: Rua zero'
      expect(page).to have_content 'Telefone: 400'

  end
end

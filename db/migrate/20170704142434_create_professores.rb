class CreateProfessores < ActiveRecord::Migration[5.1]
  def change
    create_table :professores do |t|
      t.string :nome
      t.string :endereco
      t.string :telefone

      t.timestamps
    end
  end
end

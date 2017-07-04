class CreateAlunos < ActiveRecord::Migration[5.1]
  def change
    create_table :alunos do |t|
      t.string :matricula
      t.string :nome
      t.string :endereco
      t.string :email
      t.string :tefefone
      t.references :disciplina, foreign_key: true

      t.timestamps
    end
  end
end

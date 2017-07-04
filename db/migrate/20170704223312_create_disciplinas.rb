class CreateDisciplinas < ActiveRecord::Migration[5.1]
  def change
    create_table :disciplinas do |t|
      t.string :nome
      t.string :sigla
      t.string :periodo
      t.references :professor, foreign_key: true

      t.timestamps
    end
  end
end

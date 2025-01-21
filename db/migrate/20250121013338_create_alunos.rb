class CreateAlunos < ActiveRecord::Migration[8.0]
  def change
    create_table :alunos do |t|
      t.string :nome_aluno
      t.integer :tot_creditos
      t.references :departamento, null: false, foreign_key: true

      t.timestamps
    end
  end
end

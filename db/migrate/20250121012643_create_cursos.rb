class CreateCursos < ActiveRecord::Migration[8.0]
  def change
    create_table :cursos do |t|
      t.string :nome_curso
      t.integer :creditos
      t.references :departamento, null: false, foreign_key: true

      t.timestamps
    end
  end
end

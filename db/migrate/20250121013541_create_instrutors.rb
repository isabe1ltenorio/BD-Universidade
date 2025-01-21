class CreateInstrutors < ActiveRecord::Migration[8.0]
  def change
    create_table :instrutors do |t|
      t.string :nome_instrutor
      t.decimal :salario
      t.references :departamento, null: false, foreign_key: true

      t.timestamps
    end
  end
end

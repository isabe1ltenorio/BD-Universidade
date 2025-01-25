class CreateDepartamentos < ActiveRecord::Migration[8.0]
  def change
    create_table :departamentos do |t|
      t.string :nome_depto
      t.decimal :orcamento

      t.references :predio, null: false, foreign_key: true

      t.timestamps
    end
  end
end

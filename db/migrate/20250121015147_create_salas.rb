class CreateSalas < ActiveRecord::Migration[8.0]
  def change
    create_table :salas do |t|
      t.integer :capacidade
      t.string :num_sala

      t.references :predio, null: false, foreign_key: true

      t.timestamps
    end
  end
end

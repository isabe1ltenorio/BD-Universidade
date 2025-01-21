class CreateSecaos < ActiveRecord::Migration[8.0]
  def change
    create_table :secaos do |t|
      t.integer :ano
      t.integer :num_sala
      t.references :curso, null: false, foreign_key: true
      t.references :periodo, null: false, foreign_key: true

      t.timestamps
    end
  end
end

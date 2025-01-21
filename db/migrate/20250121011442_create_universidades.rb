class CreateUniversidades < ActiveRecord::Migration[8.0]
  def change
    create_table :universidades do |t|
      t.string :nome_universidade

      t.timestamps
    end
  end
end

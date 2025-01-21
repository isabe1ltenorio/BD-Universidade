class CreatePredios < ActiveRecord::Migration[8.0]
  def change
    create_table :predios do |t|
      t.string :nome_predio

      t.timestamps
    end
  end
end

class CreateMinistras < ActiveRecord::Migration[8.0]
  def change
    create_table :ministras do |t|
      t.integer :semestre
      t.integer :ano
      t.references :curso, null: false, foreign_key: true
      t.references :secao, null: false, foreign_key: true
      t.references :instrutor, null: false, foreign_key: true

      t.timestamps
    end
  end
end

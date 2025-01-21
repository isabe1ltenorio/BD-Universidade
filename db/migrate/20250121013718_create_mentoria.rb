class CreateMentoria < ActiveRecord::Migration[8.0]
  def change
    create_table :mentoria do |t|
      t.decimal :nota
      t.references :aluno, null: false, foreign_key: true
      t.references :instrutor, null: false, foreign_key: true

      t.timestamps
    end
  end
end

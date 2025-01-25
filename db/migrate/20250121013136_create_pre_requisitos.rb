class CreatePreRequisitos < ActiveRecord::Migration[8.0]
  def change
    create_table :pre_requisitos do |t|

      t.references :curso, null: false, foreign_key: true

      t.timestamps
    end
  end
end

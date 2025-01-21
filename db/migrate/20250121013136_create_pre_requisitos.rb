class CreatePreRequisitos < ActiveRecord::Migration[8.0]
  def change
    create_table :pre_requisitos do |t|
      t.timestamps
    end
  end
end

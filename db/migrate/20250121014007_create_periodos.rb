class CreatePeriodos < ActiveRecord::Migration[8.0]
  def change
    create_table :periodos do |t|
      t.date :data
      t.time :hora_inicial
      t.time :hora_final

      t.timestamps
    end
  end
end

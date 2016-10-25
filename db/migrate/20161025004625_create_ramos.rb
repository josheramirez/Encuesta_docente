class CreateRamos < ActiveRecord::Migration
  def change
    create_table :ramos do |t|
      t.string :nombre
      t.integer :seccion
      t.integer :semestre
      t.integer :año
      t.references :profesor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

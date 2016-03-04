class CreateLaborShifts < ActiveRecord::Migration
  def change
    create_table :labor_shifts do |t|
      t.text :description
      t.integer :advance
      t.references :labor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

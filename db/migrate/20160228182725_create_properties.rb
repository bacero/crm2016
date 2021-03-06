class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :name
      t.text :description
      t.references :state, index: true, foreign_key: true
      t.references :kind_property, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

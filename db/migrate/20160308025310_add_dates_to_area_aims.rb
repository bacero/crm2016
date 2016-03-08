class AddDatesToAreaAims < ActiveRecord::Migration
  def change
    add_column :area_aims, :initiation, :date
    add_column :area_aims, :ending, :date
  end
end

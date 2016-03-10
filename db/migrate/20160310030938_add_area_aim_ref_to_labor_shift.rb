class AddAreaAimRefToLaborShift < ActiveRecord::Migration
  def change
    add_reference :labor_shifts, :area_aim, index: true, foreign_key: true
  end
end

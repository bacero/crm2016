class AddUseridRefToLaborShift < ActiveRecord::Migration
  def change
    add_reference :labor_shifts, :user, index: true, foreign_key: true
  end
end

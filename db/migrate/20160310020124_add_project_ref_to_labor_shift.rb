class AddProjectRefToLaborShift < ActiveRecord::Migration
  def change
    add_reference :labor_shifts, :project, index: true, foreign_key: true
  end
end

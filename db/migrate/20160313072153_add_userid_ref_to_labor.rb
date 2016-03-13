class AddUseridRefToLabor < ActiveRecord::Migration
  def change
    add_reference :labors, :user, index: true, foreign_key: true
  end
end

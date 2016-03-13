class AddUseridRefToLaborComment < ActiveRecord::Migration
  def change
    add_reference :labor_comments, :user, index: true, foreign_key: true
  end
end

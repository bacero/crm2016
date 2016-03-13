class AddUserIdRefToAreaAim < ActiveRecord::Migration
  def change
    add_reference :area_aims, :user, index: true, foreign_key: true
  end
end

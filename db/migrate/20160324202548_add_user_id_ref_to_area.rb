class AddUserIdRefToArea < ActiveRecord::Migration
  def change
    add_reference :areas, :user, index: true, foreign_key: true
  end
end

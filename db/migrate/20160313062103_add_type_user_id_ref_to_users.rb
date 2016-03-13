class AddTypeUserIdRefToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :type_user, index: true, foreign_key: true
  end
end

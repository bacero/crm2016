class AddDatesToProject < ActiveRecord::Migration
  def change
    add_column :projects, :initiation, :date
    add_column :projects, :ending, :date
  end
end

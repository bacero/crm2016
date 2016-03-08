class AddIndicatorToProject < ActiveRecord::Migration
  def change
    add_column :projects, :indicator, :integer
  end
end

class AddIndicatorToAreaAim < ActiveRecord::Migration
  def change
    add_column :area_aims, :indicator, :integer
  end
end

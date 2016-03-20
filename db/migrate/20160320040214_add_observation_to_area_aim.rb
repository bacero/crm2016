class AddObservationToAreaAim < ActiveRecord::Migration
  def change
    add_column :area_aims, :observation, :text
  end
end

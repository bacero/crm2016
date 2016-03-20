class AddObservationToProject < ActiveRecord::Migration
  def change
    add_column :projects, :observation, :text
  end
end

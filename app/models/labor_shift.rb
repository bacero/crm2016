class LaborShift < ActiveRecord::Base
  belongs_to :labor
  belongs_to :user
  belongs_to :project
  belongs_to :area_aim
end

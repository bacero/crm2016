class LaborShift < ActiveRecord::Base
  belongs_to :labor
  belongs_to :user
  belongs_to :project
  belongs_to :area_aim
  validates :description, presence: true, length:{minimum: 5}
  validates :advance, presence: true, length:{minimum: 1}

end

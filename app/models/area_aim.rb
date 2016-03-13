class AreaAim < ActiveRecord::Base
  belongs_to :area
  belongs_to :state
  belongs_to :user
  validates :name, presence: true, length:{minimum: 3}
  has_many :labor_shifts
end

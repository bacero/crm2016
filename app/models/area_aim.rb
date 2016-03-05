class AreaAim < ActiveRecord::Base
  belongs_to :area
  belongs_to :state
  validates :name, presence: true, length:{minimum: 3}
end

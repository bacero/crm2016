class Labor < ActiveRecord::Base
  belongs_to :area_aim
  belongs_to :project
  belongs_to :state
  validates :name, presence: true, length:{minimum: 3}
  validates :indicator, presence: true, length:{minimum: 1}
  validates :indicator_description, presence: true, length:{minimum: 3}
end

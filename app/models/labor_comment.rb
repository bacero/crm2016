class LaborComment < ActiveRecord::Base
  belongs_to :labor
  validates :description, presence: true, length:{minimum:5}, uniqueness: true
end

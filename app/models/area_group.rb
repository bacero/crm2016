class AreaGroup < ActiveRecord::Base
  belongs_to :area
  validates :name, presence: true, length:{minimum: 5}
end

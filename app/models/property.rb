class Property < ActiveRecord::Base
  belongs_to :state
  belongs_to :kind_property
  validates :name, presence: true, length:{minimum: 3}, uniqueness: true
  has_many :type_clients, through: :list_properties
end

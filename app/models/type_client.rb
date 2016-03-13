class TypeClient < ActiveRecord::Base
  belongs_to :state
  has_many :client
  validates :name, presence: true, length:{minimum: 3}, uniqueness: true
  has_many :properties, through: :list_properties
end

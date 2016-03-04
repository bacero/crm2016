class TypeClient < ActiveRecord::Base
  belongs_to :state
  has_many :client
  validates :name, presence: true, length:{minimum: 3}, uniqueness: true
end

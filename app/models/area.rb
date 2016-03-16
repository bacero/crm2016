class Area < ActiveRecord::Base
	 validates :name, presence: true, length:{minimum: 3}
	 validates :name, presence: true, length:{minimum: 3}
	 validates :creator, presence: true, length:{minimum: 5}
	 has_many :area_aims
end

class Project < ActiveRecord::Base
	 validates :name, presence: true, length:{minimum: 5}
	 belongs_to :user
	 has_many :labor_shifts

end

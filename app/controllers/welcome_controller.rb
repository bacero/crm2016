class WelcomeController < ApplicationController
  def index
  	@recurrent = Labor.where("ending is null").where("initiation is null")
  	@labors = Labor.where("ending is not null").where("initiation is not null").order("ending ASC")
  end
end

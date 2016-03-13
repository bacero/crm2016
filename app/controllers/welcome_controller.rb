class WelcomeController < ApplicationController
  def index
  	@recurrent = Labor.where("ending is null").where("initiation is null").where("user_id=#{current_user.id}")
  	@labors = Labor.where("ending is not null").where("initiation is not null").order("ending ASC").where("user_id=#{current_user.id}")
  end
end

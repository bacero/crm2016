class WelcomeController < ApplicationController
  def index
  	@labors = Labor.where("user_id=#{current_user.id}")
  end
end

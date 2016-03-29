class WelcomeController < ApplicationController
  def index
  	@labors = Labor.where("user_id=#{current_user.id} and state_id=1")
  	@shift=LaborShift.new()
  	@ultimate=@labors.where("created_at > '#{current_user.last_sign_in_at}'")
  end
end

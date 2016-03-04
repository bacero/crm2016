class WelcomeController < ApplicationController
  def index
  	@labors = Labor.all	
  end
end

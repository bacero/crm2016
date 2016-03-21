class ReportsController < ApplicationController
	def index
		
		if params[:date]
			@date=params[:date]
		else
			@date=DateTime.now.to_date
		end
		
	end
end

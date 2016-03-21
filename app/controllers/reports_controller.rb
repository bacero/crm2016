class ReportsController < ApplicationController
	def index
		
		if params[:date]
			@date=params[:date]
		else
			@date=DateTime.now.to_date
		end
		if Rails.env.development?
		    @estoy="desarrollo"
		else
			@estoy="Produccion"
		end

	end
end

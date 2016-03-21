class ReportsController < ApplicationController
	def index
		
		if params[:date]
			@date=params[:date]
		else
			@date=DateTime.now.to_date
		end
		@labor=LaborShift.where("WEEK(created_at)=WEEK('#{@date}') AND labor_id is not null").group(:labor_id).maximum(:id)
		@aim=LaborShift.where("MONTH(created_at)=MONTH('#{@date}') AND labor_id is null AND project_id  is not null OR  area_aim_id is not null").group(:labor_id,:area_aim_id).maximum(:id)
		
	end
end

class ReportsController < ApplicationController
	def index
		
		if params[:date]
			@date=params[:date]
		else
			@date=DateTime.now.to_date
		end
		if Rails.env.development?
		    @labor=LaborShift.where("WEEK(created_at)=WEEK('#{@date}') AND labor_id is not null").group(:labor_id).maximum(:id)
			@aim=LaborShift.where("MONTH(created_at)=MONTH('#{@date}') AND labor_id is null AND project_id  is not null OR  area_aim_id is not null").group(:labor_id,:area_aim_id).maximum(:id)
		else
			@labor=LaborShift.where("EXTRACT(DOW FROM created_at)=EXTRACT(DOW FROM TIMESTAMP '#{@date}') AND labor_id is not null").group(:labor_id).maximum(:id)
			@aim=LaborShift.where("EXTRACT(MONTH FROM created_at)=EXTRACT(MONTH FROM TIMESTAMP '#{@date}') AND labor_id is null AND project_id  is not null OR  area_aim_id is not null").group(:labor_id,:area_aim_id).maximum(:id)
		end

		
		
	end
end

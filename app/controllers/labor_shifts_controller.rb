class LaborShiftsController < ApplicationController
	def new
		@labor=params[:labor_id]
		@project=params[:project_id]
		@name=params[:name]
		@aim=params[:area_aim_id]
		@shift=LaborShift.new()
	end
	def create
		@shift=LaborShift.new(shift_params)
		@shift.user_id=current_user.id
		if @shift.save
			p=params[:labor_shift]
			if p[:project_id]
				@p = Project.find(p[:project_id])
				redirect_to @p
			elsif p[:area_aim_id]
				@p = AreaAim.find(p[:area_aim_id])
				redirect_to @p
			else
				redirect_to root_path
			end
		end
	end

	private
	def shift_params
		params.require(:labor_shift).permit(:description,:advance,:labor_id,:project_id,:area_aim_id)
	end


end

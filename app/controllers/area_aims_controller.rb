class AreaAimsController < ApplicationController
	
	def create
		@aim=AreaAim.new(aim_params)
		if @aim.save
			redirect_to @aim
		else
			a=params[:area_aim]
			a=a[:area_id]
			@a = Area.find(a)
			redirect_to @a
		end
	end
	def show
		@aim=AreaAim.find(params[:id])
		@labors = Labor.where('area_aim_id='+params[:id])
		@labor = Labor.new()	
		@shift=LaborShift.new()
	end

	def edit
		@aim=AreaAim.find(params[:id])
	end
	def update
		@aim=AreaAim.find(params[:id])
		if @aim.update(aim_params)
			redirect_to @aim
		else
			render :edit
		end
	end
	private
	def aim_params
		params.require(:area_aim).permit(:name,:description,:area_id,:indicator,:initiation,:ending,:user_id)
	end
end

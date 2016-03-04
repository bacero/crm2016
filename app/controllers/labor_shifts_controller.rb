class LaborShiftsController < ApplicationController
	def new
		@labor=params[:labor_id]
		@name=params[:name]
		@shift=LaborShift.new()
	end
	def create
		@shift=LaborShift.new(shift_params)
		if @shift.save
			redirect_to root_path
		end
	end

	private
	def shift_params
		params.require(:labor_shift).permit(:description,:advance,:labor_id)
	end


end

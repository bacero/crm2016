class AreaGroupsController < ApplicationController

	def create
		p=params[:area_group]
		p=p[:area_id]
		@a = Area.find(p)
		@grupo=AreaGroup.new(group_params)
		if @grupo.save
			redirect_to @a
		else
			redirect_to @a
		end
	end
	def group_params
		params.require(:area_group).permit(:name,:area_id)
	end
end


        
		
		
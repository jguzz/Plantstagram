class PlantsController < ApplicationController
	before_action :find_plant, only: [:show]

	def index 
		@plants = Plant.all
	end

	def show; end

	def new 
		@plant = Plant.new()
	end

	def create 
		@plant = Plant.create([plant_params])
		if @plant.valid? 
			redirect_to @plant 
		else
			flash[:errors] = @plant.errors.full_messages
			redirect_to new_plant_path
		end
	end	

	private

    def plant_params
        params.require(:plant).permit!
    end

    def find_plant
        @plant = Plant.find(params[:id])
    end
end
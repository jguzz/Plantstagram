class OwnsController < ApplicationController
	before_action :find_own, only: [:show, :edit, :update]

	def index 
		@owns = Own.all
	end

	def show; end

	def new 
		@own = Own.new()
	end

	def create 
		@own = Own.create(own_params)
		if @own.valid? 
			redirect_to @own
		else
			flash[:errors] = @own.errors.full_messages
			redirect_to new_own_path
		end
	end	

    def edit; end
     
    def update
        @own.update(own_params)
        if @own.valid?
            redirect_to @own
        else
            flash[:errors] = @own.erors.full_messages
         	redirect_to edit_own_path
        end
    end

	def delete 
		Own.find(params[:id]).delete
		redirect_to own_page
	end

	private

    def own_params
        params.require(:user).permit!
    end

    def find_own
        @own = Own.find(params[:id])
    end
end
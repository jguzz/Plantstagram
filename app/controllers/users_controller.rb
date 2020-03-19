class UsersController < ApplicationController
	before_action :find_user, only: [:show, :edit, :update]

	def index 
		@users = User.all
	end

	def show; end

	def new 
		@user = User.new()
	end

	def create 
		@user = User.create(user_params)
		if @user.valid? 
			redirect_to @user 
		else
			flash[:errors] = @user.errors.full_messages
			redirect_to new_user_path
		end
	end	

    def edit; end
     
    def update
        @user.update(user_params)
        if @user.valid?
            redirect_to @user
        else
            flash[:errors] = @user.erors.full_messages
         redirect_to edit_user_path
        end
    end

	def delete 
		Person.find(params[:id]).delete
		redirect_to new_user_page
	end

	private

    def user_params
        params.require(:user).permit!
    end

    def find_user
        @user = User.find(params[:id])
    end
end
class UsersController < ApplicationController

  def show
  	@user=User.find(current_user.id)
  	@resumes = Resume.all
  end
  def new
		@user = User.new
	end
  def create
		@user = User.new(user_params)

		if @user.save
			#flash[:success] = "Resume created"      doesn't work, i want it to though
			redirect_to '/account'

		else
			render 'new'
		end
	end
  private
		def user_params
			params.require(:user).permit(:name, :email, :password, :password_confirmation, :faculty, :first_major)
		end
end

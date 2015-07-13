class UsersController < ApplicationController

  def show
  	@user=User.find(current_user.id)
  	@resumes = Resume.all
  end
  def new
		@user = User.new
	end
  def create
		User.new(user_params)

	end
  private
		def user_params
			params.require(:user).permit(:name, :faculty, :first_major)
		end
end

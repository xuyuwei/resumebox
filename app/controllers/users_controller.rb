class UsersController < ApplicationController

  def show
  	@user=User.find(current_user.id)
  	@resumes = Resume.all
  end
end

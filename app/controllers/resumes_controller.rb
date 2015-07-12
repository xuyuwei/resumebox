class ResumesController < ApplicationController
	include ResumesHelper

	def index
		@resumes = Resume.all
	end
	def new
		@resume = Resume.new
	end
	def create
		@resume = Resume.new(resume_params)

		@resume.major_list.add(current_user.first_major)
		if current_user.second_major != nil
			@resume.major_list.add(current_user.second_major)
		end

		if @resume.save
			#flash[:success] = "Resume created"      doesn't work, i want it to though
			@resume.url = get_image_url(@resume.id, @resume.resume_file_name)
			redirect_to '/account'

		else
			render 'new'
		end
	end
	def show
		if user_signed_in?
			@resume=Resume.find(params[:id])
		else
			redirect_to '/users/sign_in'
		end
	end
	def destroy
		Resume.find(params[:id]).destroy
		redirect_to :back
	end
	def update
	end
	def edit

		if current_user.id == Resume.find(params[:id]).user_id
			@resume = Resume.find(params[:id])
		else
			redirect_to '/users/sign_in'
		end
	end

	private
		def resume_params
			params.require(:resume).permit(:url, :user_id, :resume, :resume_file_name)
		end
end

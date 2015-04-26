class ResumesController < ApplicationController
	include ResumesHelper

	def index

		if params[:company]
			lcompany = "_"+params[:company].gsub(/\s+/, "").downcase
			if lcompany == ""
				@resumes = Resume.all
			else
				@resumes = Resume.tagged_with(lcompany)
			end
		else
			@resumes = Resume.all
		end
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

		@resume.company_list.each do |c|
			@resume.lcompany_list.add("_"+c.gsub(/\s+/, "").downcase)
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
			params.require(:resume).permit(:url, :user_id, :resume, :resume_file_name, :company_list)
		end
end

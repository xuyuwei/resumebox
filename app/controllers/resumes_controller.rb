class ResumesController < ApplicationController
	def index
		@resumes = Resume.all
	end
	def new
		@resume = Resume.new
	end
	def create
		@resume = Resume.new(resume_params)
		if @resume.save
			#flash[:success] = "Resume created"      doesn't work, i want it to though
			redirect_to '/account'
		
		else
			render 'new'
		end
	end
	def show
		@resume=Resume.find(params[:id])
	end
	def destroy
		Resume.find(params[:id]).destroy
		redirect_to :back
	end
	def update
	end
	def edit
	end

	private	
		def resume_params
			params.require(:resume).permit(:url, :user_id)
		end
end

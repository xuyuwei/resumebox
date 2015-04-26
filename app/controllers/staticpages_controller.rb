#controller which handles all the static pages

class StaticpagesController < ApplicationController

	#home page
	def home
		@resumes = Resume.take(3)
	end



end

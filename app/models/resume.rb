class Resume < ActiveRecord::Base
	belongs_to :user
	#list of companies that this resume received interview from
	#list of faculties and majors
	acts_as_taggable_on :lcompanies, :companies, :majors
	validates :user_id, presence: true
	validates :resume, presence: true
	has_attached_file :resume, 
		:styles => {
			fullsize: {geometry: "100%", format: :jpg, :processors => [:pdfprocessor]}
	 	}
	validates_attachment :resume, :content_type => { :content_type => %w(application/pdf) }
		
end

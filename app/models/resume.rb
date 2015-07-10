class Resume < ActiveRecord::Base
	belongs_to :user
	#list of companies that this resume received interview from
	#list of faculties and majors
	acts_as_taggable_on :companies, :majors
	validates :user_id, presence: true
	validates :resume, presence: true
	has_attached_file :resume,
		:bucket => ENV["bucket"],
	  :s3_credentials => {
	    :access_key_id => ENV["AWS_ACCESS_KEY_ID"],
	    :secret_access_key => ENV["AWS_SECRET_ACCESS_KEY"]
	  },
		:processors => [:pdfprocessor],
		:styles => {
			:fullsize => ["50x50",:jpg],
			:small => ["50x50",:jpg]
		},
		:convert_options => {:fullsize => '-quality 90'}
	validates_attachment_content_type :resume, :content_type => %w(application/pdf)

end

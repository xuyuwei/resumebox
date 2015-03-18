class Resume < ActiveRecord::Base
	belongs_to :user
	#list of companies that this resume received interview from
	#list of faculties and majors
	acts_as_taggable_on :companies, :majors
	validates :url, presence: true
	validates :user_id, presence: true

end

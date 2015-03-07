class Resume < ActiveRecord::Base

	#list of companies that this resume received interview from
	#list of faculties and majors
	acts_as_taggable_on :companies, :faculties, :majors

end

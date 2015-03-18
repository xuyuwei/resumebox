class AddResumeToResumes < ActiveRecord::Migration
  def change
  	add_attachment :resumes, :resume
  end
end

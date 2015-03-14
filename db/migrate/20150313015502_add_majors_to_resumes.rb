class AddMajorsToResumes < ActiveRecord::Migration
  def change
    add_column :resumes, :faculty, :string
  end
end

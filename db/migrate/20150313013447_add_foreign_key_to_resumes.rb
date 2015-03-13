class AddForeignKeyToResumes < ActiveRecord::Migration
  def change
  	add_foreign_key :resumes, :users
  end
end

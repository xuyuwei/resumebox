class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.string :url

      t.timestamps null: false
    end
  end
end

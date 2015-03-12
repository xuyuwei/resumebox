class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.string :url
      t.references :user, index: true
      t.timestamps null: false
   	end
   	add_index :resumes, [:user_id, :created_at]
  end
end

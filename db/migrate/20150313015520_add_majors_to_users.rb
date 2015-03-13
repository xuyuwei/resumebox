class AddMajorsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_major, :string
    add_column :users, :second_major, :string
    add_column :users, :faculty, :string
  end
end

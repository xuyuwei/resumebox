class User < ActiveRecord::Base
	has_many :resumes
	validates :name, presence: true
	validates :faculty, presence: true
	validates :first_major, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

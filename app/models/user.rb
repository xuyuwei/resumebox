class User < ActiveRecord::Base
	has_many :resumes
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :faculty, presence: true
  validates :first_major, presence: true
end

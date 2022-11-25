class Student < ApplicationRecord
  has_many :student_exams
  has_many :exams
  has_many :teachers, through: :exams
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

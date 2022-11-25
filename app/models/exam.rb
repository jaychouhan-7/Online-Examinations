class Exam < ApplicationRecord
  has_many :questions
  has_many :student_exams
  has_many :students, through: :student_exams
  belongs_to :teacher
end

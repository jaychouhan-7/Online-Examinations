class CreateStudentExams < ActiveRecord::Migration[7.0]
  def change
    create_table :student_exams do |t|

      t.timestamps
    end
  end
end

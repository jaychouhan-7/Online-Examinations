class UpdateExamFields < ActiveRecord::Migration[7.0]
  def change
    change_table :exams do |t|
      t.string :exam_name
      t.string :exam_category
      t.text :description
      t.integer :maximum_marks
      t.integer :number_of_questions
      t.time :exam_duration
    end
  end
end

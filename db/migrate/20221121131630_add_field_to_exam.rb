class AddFieldToExam < ActiveRecord::Migration[7.0]
  def change
    change_table :exams do |t|
      t.belongs_to :teacher
      t.belongs_to :student
    end

    change_table :questions do |t|
      t.belongs_to :exam
    end
  end
end

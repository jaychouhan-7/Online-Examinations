class AddFieldToTables < ActiveRecord::Migration[7.0]
  def change
    change_table :student_exams do |t|
      t.belongs_to :exam
      t.belongs_to :student
    end

    change_table :questions do |t|
      t.string :description
      t.integer :marks
    end
  end
end

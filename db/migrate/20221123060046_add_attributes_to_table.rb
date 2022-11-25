class AddAttributesToTable < ActiveRecord::Migration[7.0]
  def change
    change_table :teachers do |t|
      t.string :name
      t.integer :phone
    end
  end
end

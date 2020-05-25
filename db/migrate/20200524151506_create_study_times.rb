class CreateStudyTimes < ActiveRecord::Migration[5.2]
  def change
    create_table :study_times do |t|
      t.integer :user_id
      t.integer :day
      t.integer :time
      t.string :genre
      t.text :comment

      t.timestamps
    end
  end
end

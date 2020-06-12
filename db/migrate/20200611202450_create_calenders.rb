class CreateCalenders < ActiveRecord::Migration[5.2]
  def change
    create_table :calenders do |t|
      t.integer :user_id
      t.integer :day
      t.integer :time
      t.string :title
      t.text :plan

      t.timestamps
    end
  end
end

class CreateTextbooks < ActiveRecord::Migration[5.2]
  def change
    create_table :textbooks do |t|
      t.integer :user_id
      t.integer :textbook_tag_id
      t.string :title
      t.string :image
      t.integer :status, default:1
      t.text :note

      t.timestamps
    end
  end
end

class CreateTextbookTags < ActiveRecord::Migration[5.2]
  def change
    create_table :textbook_tags do |t|
      t.integer :textbook_id
      t.string :title

      t.timestamps
    end
  end
end

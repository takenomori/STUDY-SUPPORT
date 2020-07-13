class CreateTextbookTags < ActiveRecord::Migration[5.2]
  def change
    create_table :textbook_tags do |t|

      t.timestamps
    end
  end
end

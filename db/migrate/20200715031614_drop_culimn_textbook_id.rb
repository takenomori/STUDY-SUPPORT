class DropCulimnTextbookId < ActiveRecord::Migration[5.2]
  def change
    remove_column :textbook_tags, :textbook_id, :integer
  end
end

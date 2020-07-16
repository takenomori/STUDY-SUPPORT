class AddTextbookImage < ActiveRecord::Migration[5.2]
  def change
    add_column :textbooks, :book_image_id, :string
  end
end

class ChangeCulumnTextbook < ActiveRecord::Migration[5.2]
  def change
    remove_column :textbooks, :textbook_tag_id, :integer

    add_column :textbooks, :tag_id, :integer
  end
end

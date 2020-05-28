class RenameImageColumnToTextbooks < ActiveRecord::Migration[5.2]
  def change
    rename_column :textbooks, :image, :image_id
  end
end

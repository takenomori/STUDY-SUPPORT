class Rocords < ActiveRecord::Migration[5.2]
  def change
    drop_table :textbook_tags
  end
end

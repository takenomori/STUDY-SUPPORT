class AddColumnUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :level, :integer, default: 1

    add_column :users, :experience_point, :integer, default: 0
  end
end

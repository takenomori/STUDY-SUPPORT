class RemoveTableCalender < ActiveRecord::Migration[5.2]
  def change
    drop_table :calenders
end

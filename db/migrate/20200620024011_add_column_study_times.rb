class AddColumnStudyTimes < ActiveRecord::Migration[5.2]
  def change
    add_column :study_times, :point, :integer, default:1
  end
end

class AddStartTimeEndTimeToHours < ActiveRecord::Migration[7.0]
  def change
    add_column :hours, :start_time, :time
    add_column :hours, :end_time, :time
  end
end

class AddStartTimeEndTimeToSchedulers < ActiveRecord::Migration[7.0]
  def change
    add_column :schedulers, :start_time, :time
    add_column :schedulers, :end_time, :time
  end
end

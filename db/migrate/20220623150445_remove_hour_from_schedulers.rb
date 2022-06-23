class RemoveHourFromSchedulers < ActiveRecord::Migration[7.0]
  def change
    remove_column :schedulers, :hour, :time
  end
end

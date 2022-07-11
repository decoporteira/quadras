class DropTableHours2 < ActiveRecord::Migration[7.0]
  def change
    drop_table :hours
  end
end

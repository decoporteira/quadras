class AddTotalToSchedulers < ActiveRecord::Migration[7.0]
  def change
    add_column :schedulers, :total, :decimal, precision: 8, scale: 2
  end
end

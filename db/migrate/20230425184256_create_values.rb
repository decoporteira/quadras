class CreateValues < ActiveRecord::Migration[7.0]
  def change
    create_table :values do |t|
      t.decimal :beach_day_value, precision: 8, scale: 2
      t.decimal :beach_night_value, precision: 8, scale: 2
      t.decimal :tennis_day_value, precision: 8, scale: 2
      t.decimal :tennis_night_value, precision: 8, scale: 2

      t.timestamps
    end
  end
end

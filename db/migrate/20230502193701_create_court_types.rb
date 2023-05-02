class CreateCourtTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :court_types do |t|
      t.string :name
      t.decimal :day_price, precision: 8, scale: 2
      t.decimal :night_price, precision: 8, scale: 2

      t.timestamps
    end
  end
end

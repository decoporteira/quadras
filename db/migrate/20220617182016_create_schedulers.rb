class CreateSchedulers < ActiveRecord::Migration[7.0]
  def change
    create_table :schedulers do |t|
      t.integer :status
      t.date :date
      t.time :hour
      t.references :client, null: false, foreign_key: true
      t.references :court, null: false, foreign_key: true

      t.timestamps
    end
  end
end

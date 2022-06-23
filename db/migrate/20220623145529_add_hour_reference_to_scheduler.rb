class AddHourReferenceToScheduler < ActiveRecord::Migration[7.0]
  def change
    add_reference :schedulers, :hour, null: false, foreign_key: true
  end
end

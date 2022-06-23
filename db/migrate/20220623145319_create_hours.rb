class CreateHours < ActiveRecord::Migration[7.0]
  def change
    create_table :hours do |t|
      t.integer :hour
      t.integer :status

      t.timestamps
    end
  end
end

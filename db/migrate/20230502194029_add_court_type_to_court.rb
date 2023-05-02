class AddCourtTypeToCourt < ActiveRecord::Migration[7.0]
  def change
    add_reference :courts, :court_type, null: false, foreign_key: true, default: 1
  end
end

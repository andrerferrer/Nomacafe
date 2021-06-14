class AddCafeToTables < ActiveRecord::Migration[6.0]
  def change
    add_reference :tables, :cafe, null: false, foreign_key: true
  end
end

class AddSeatsToTables < ActiveRecord::Migration[6.0]
  def change
    add_column :tables, :seat, :string
  end
end

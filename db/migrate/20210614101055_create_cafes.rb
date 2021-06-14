class CreateCafes < ActiveRecord::Migration[6.0]
  def change
    create_table :cafes do |t|
      t.string :location
      t.string :name
      t.string :opening_times
      t.integer :owed_money
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

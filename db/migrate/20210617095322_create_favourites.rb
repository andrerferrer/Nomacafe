class CreateFavourites < ActiveRecord::Migration[6.0]
  def change
    create_table :favourites do |t|

      t.references :favouritable, polymorphic: true
      t.references :user

      t.timestamps
    end
  end
end

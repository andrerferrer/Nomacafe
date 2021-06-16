class ChangeNullOnReviews < ActiveRecord::Migration[6.0]
  def change
    change_column :reviews, :booking_id, :bigint, null: true
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end

class RenameTypeOfUsers < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :type, :nomacafe_type
  end
end

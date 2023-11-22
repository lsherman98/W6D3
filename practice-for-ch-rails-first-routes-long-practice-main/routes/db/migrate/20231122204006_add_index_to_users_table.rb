class AddIndexToUsersTable < ActiveRecord::Migration[7.0]
  def change
    add_index :users, :username, unique: true
    #Ex:- add_index("admin_users", "username")
  end
end

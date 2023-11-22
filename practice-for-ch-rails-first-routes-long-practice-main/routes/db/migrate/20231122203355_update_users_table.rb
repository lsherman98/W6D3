class UpdateUsersTable < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :name, :username
    change_column :users, :username, :string, unique: true
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
    remove_column :users, :email
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end

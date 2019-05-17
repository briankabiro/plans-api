class RemoveEmailPasswordAdminColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :members, :admin
    remove_column :members, :email
    remove_column :members, :password_digest
  end
end

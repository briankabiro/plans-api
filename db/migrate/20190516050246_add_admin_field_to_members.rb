class AddAdminFieldToMembers < ActiveRecord::Migration[5.2]
  def change
    add_column :members, :admin, :boolean
  end
end

class RemoveRoleFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :role, :integer 
    add_column :users, :name, :string
    add_column :users, :mobile, :string
    add_column :users, :address, :string
    add_column :users, :type, :string
    add_column :users, :status, :string
  end
end

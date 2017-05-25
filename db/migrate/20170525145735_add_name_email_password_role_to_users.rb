class AddNameEmailPasswordRoleToUsers < ActiveRecord::Migration[5.1]
  def change
  	add_column :users, :name, :string
  	add_column :users, :email, :string
  	add_column :users, :password, :digest
  	add_column :users, :role, :string
  end
end

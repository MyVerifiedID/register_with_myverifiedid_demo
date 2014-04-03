class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :gender, :string
    add_column :users, :country, :string
    add_column :users, :provider, :string
    add_column :users, :uid, :string
  end
end

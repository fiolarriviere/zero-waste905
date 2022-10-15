class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone_number, :string
    add_column :users, :ruc, :string
    add_column :users, :dni, :string
    add_column :users, :address, :string
    add_column :users, :city, :string
    add_column :users, :latitude, :float
    add_column :users, :longitude, :float
    add_column :users, :business_name, :string

  end
end

class AddAdditionalPartnershipDetailstoUsers < ActiveRecord::Migration
  def change
  	add_column :users, :owner_first_name, :string
  	add_column :users, :owner_last_name, :string
  	add_column :users, :company_name, :string
  	add_column :users, :work_number, :string
  	add_column :users, :street_address, :string
  	add_column :users, :street_address2, :string
  	add_column :users, :city, :string
  	add_column :users, :state, :string
  	add_column :users, :post_number, :integer
  	add_column :users, :country, :string

  end
end

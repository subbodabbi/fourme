class AddTopicColumnsToTables < ActiveRecord::Migration
  def change
  	add_column :users, :interests, :string, array: true, default: []
  	add_column :websites, :interests, :string, array: true, default: []
  end
end

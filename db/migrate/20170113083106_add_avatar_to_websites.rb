class AddAvatarToWebsites < ActiveRecord::Migration
  def change
    add_column :websites, :avatar, :string
  end
end

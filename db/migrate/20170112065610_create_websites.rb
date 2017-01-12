class CreateWebsites < ActiveRecord::Migration
  def change
    create_table :websites do |t|
      t.string :url
      t.integer :view_count
      t.timestamps null: false
    end
  end
end

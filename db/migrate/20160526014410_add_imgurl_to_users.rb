class AddImgurlToUsers < ActiveRecord::Migration
  def change
    add_column :users, :imgurl, :string
  end
end

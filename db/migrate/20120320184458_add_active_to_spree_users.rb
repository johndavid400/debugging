class AddActiveToSpreeUsers < ActiveRecord::Migration
  def change
    add_column :spree_users, :active, :boolean
  end
end

class AddSpreeUserIdToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :spree_user_id, :integer
  end
end

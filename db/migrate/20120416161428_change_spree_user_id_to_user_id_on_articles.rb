class ChangeSpreeUserIdToUserIdOnArticles < ActiveRecord::Migration
  def change
    rename_column :spree_articles, :spree_user_id, :user_id
  end
end

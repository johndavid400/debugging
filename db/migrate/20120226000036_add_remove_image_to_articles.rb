class AddRemoveImageToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :remove_image, :boolean
  end
end

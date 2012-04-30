class AddGalleryIdToSpreeImages < ActiveRecord::Migration
  def change
    add_column :spree_assets, :gallery_id, :integer
  end
end

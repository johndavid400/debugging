class AddIdsToGalleries < ActiveRecord::Migration
  def change
    add_column :galleries, :tutorial_id, :integer
    add_column :galleries, :article_id, :integer
    add_column :galleries, :project_id, :integer
    add_column :galleries, :step_id, :integer
  end
end

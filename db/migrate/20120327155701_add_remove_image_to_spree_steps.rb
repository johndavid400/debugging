class AddRemoveImageToSpreeSteps < ActiveRecord::Migration
  def change
    add_column :spree_steps, :remove_image, :boolean
  end
end

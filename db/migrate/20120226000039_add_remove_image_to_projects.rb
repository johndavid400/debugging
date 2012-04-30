class AddRemoveImageToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :remove_image, :boolean
  end
end

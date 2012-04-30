class AddRemoveImageToTutorials < ActiveRecord::Migration
  def change
    add_column :tutorials, :remove_image, :boolean
  end
end

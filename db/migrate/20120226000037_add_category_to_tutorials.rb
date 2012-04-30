class AddCategoryToTutorials < ActiveRecord::Migration
  def change
    add_column :tutorials, :category, :string
  end
end

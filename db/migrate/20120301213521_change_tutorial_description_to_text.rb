class ChangeTutorialDescriptionToText < ActiveRecord::Migration
  def up
    change_column :tutorials, :description, :text
  end

  def down
    change_column :tutorials, :description, :string
  end
end

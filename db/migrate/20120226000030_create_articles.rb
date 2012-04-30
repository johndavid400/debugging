class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :name
      t.text :description
      t.integer :spree_user_id
      t.boolean :featured
      t.boolean :published
      t.integer :project_id
      t.string :image_file_name

      t.timestamps
    end
  end
end

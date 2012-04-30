class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :name
      t.text :description
      t.string :gallery_type

      t.timestamps
    end
  end
end

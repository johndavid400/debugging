class NamespaceModels < ActiveRecord::Migration
  def change
    rename_table :articles, :spree_articles
    rename_table :tutorials, :spree_tutorials
    rename_table :projects, :spree_projects
    rename_table :steps, :spree_steps
    rename_table :galleries, :spree_galleries
  end
end

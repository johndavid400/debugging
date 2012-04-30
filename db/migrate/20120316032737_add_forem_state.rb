class AddForemState < ActiveRecord::Migration

  def change
    add_column :spree_users, :forem_state, :string, :default => 'pending_review'
  end
end

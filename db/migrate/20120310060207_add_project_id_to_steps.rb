class AddProjectIdToSteps < ActiveRecord::Migration
  def change
    add_column :steps, :project_id, :integer
  end
end

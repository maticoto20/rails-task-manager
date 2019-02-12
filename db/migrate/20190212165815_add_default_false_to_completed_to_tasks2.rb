class AddDefaultFalseToCompletedToTasks2 < ActiveRecord::Migration[5.2]
  def up
    change_column :tasks, :completed, :boolean, default: false
  end

  def down
    change_column :tasks, :completed, :boolean, default: nil
  end
end

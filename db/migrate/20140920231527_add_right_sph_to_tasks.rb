class AddRightSphToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :right_sph, :integer
  end
end

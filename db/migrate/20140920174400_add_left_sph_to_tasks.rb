class AddLeftSphToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :left_sph, :integer
  end
end

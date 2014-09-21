class AddScriptsToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :left_axis, :integer
    add_column :tasks, :right_axis, :integer
    add_column :tasks, :left_cyl, :decimal, precision: 4, scale: 2
    add_column :tasks, :right_cyl, :decimal, precision: 4, scale: 2
    change_column :tasks, :left_sph, :decimal, precision: 4, scale: 2
    change_column :tasks, :right_sph, :decimal, precision: 4, scale: 2
  end
end

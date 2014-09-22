class Task < ActiveRecord::Base
  belongs_to :list, class_name: TaskList

  acts_as_list scope: :list, column: :priority, add_new_at: :top

  validates :left_sph, presence: true, numericality: { greater_than_or_equal_to: -10, less_than_or_equal_to: 10 }
  validates :list, presence: true

  def target_priority=(value)
    insert_at(value.to_i)
  end
end

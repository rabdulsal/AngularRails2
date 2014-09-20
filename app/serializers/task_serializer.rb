class TaskSerializer < ActiveModel::Serializer
	# add left_sph
  attributes :id, :description, :priority, :due_date, :completed, :left_sph
end

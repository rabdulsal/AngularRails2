class TaskSerializer < ActiveModel::Serializer
	# add left_sph
  attributes 	:id, 
  				:description, 
  				:priority, 
  				:due_date, 
  				:completed, 
  				:left_sph, 
  				:right_sph,
  				:left_cyl,
  				:right_cyl,
  				:left_axis,
  				:right_axis
end

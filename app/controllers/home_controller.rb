class HomeController < ApplicationController
  def index
  	@homepage = "homepage background centered-anchor"
  	@block = "centered-block"
    if user_signed_in?
    	#@task_list = TaskList.last
    	#if @task_list
    	#	redirect_to task_list_path(@task_list)
    	#end
      redirect_to dashboard_path
    end
  end
end

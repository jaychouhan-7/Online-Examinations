class ApplicationController < ActionController::Base
  # before_action :authenticate_teacher!, :authenticate_student!, except: [:home]

  def after_sign_in_path_for(resource)
    # mypath = "/teachers/#{resource.id}/dashboard"
    # mypath
    teacher_dashboard_path(resource.id)
  end

  def after_sign_out_path_for(resource)
    root_path
  end

end

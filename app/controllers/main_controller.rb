class MainController < ApplicationController
  def index
    end_point = EndPoint.where(:full_path => request.fullpath).first
    if end_point.present?
      render :text => end_point.response_body
    else
      render :text => "Sorry Skippy, that end point doesn't exist in the system.  #you_fail"
    end
  end
end

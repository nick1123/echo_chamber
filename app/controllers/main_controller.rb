class MainController < ApplicationController
  def index
    full_path = request.fullpath
    full_path.gsub!(/MAC=.+/, '') # Remove MAC query
    full_path.gsub!(/\?$/, '')    # Remove trailing ?

    end_point = EndPoint.where(:full_path => full_path).first
    if end_point.present?
      render :text => end_point.response_body
    else
      render :text => "Sorry Skippy, that end point doesn't exist in the system.  #you_fail"
    end
  end
end

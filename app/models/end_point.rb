class EndPoint < ActiveRecord::Base
  attr_accessible :full_path, :response_body
  validates :full_path, :format => {:with => /^\//, :message => "Must begin with /"}
end

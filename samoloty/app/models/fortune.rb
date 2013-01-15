class Fortune < ActiveRecord::Base
  attr_accessible :quotation, :source, :avatar
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :storage => :filesystem
end

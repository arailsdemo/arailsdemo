class Post < ActiveRecord::Base
  default_scope order("sequence DESC")
  
  validates :title, :presence => true
  validates :sequence, :presence => true,
                       :numericality => { :greater_than => 0 }
  validates :description, :presence => true
end
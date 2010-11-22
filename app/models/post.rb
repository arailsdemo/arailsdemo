class Post < ActiveRecord::Base
  default_scope order("sequence DESC")
  
  has_many :sections, :dependent => :destroy
  accepts_nested_attributes_for :sections, :reject_if => :all_blank
  
  
  validates :title, :presence => true
  validates :sequence, :presence => true,
                       :numericality => { :greater_than => 0 }
  validates :description, :presence => true
end
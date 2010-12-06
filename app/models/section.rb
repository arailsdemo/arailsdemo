class Section < ActiveRecord::Base
  default_scope order("position ASC")
  belongs_to :post
  has_one :snippet, :dependent => :destroy
  accepts_nested_attributes_for :snippet, :reject_if => lambda{ |a| a[:content].blank? && a[:caption].blank? }
  

  validates :heading, :presence => true
  validates :body, :presence => true
  validates :position, :presence => true,
                       :numericality => { :greater_than => 0}
end


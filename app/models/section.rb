class Section < ActiveRecord::Base
  default_scope order("position ASC")
  belongs_to :post

  validates :heading, :presence => true
  validates :body, :presence => true
  validates :position, :presence => true,
                       :numericality => { :greater_than => 0}
end


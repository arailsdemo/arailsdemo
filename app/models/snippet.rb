class Snippet < ActiveRecord::Base
  belongs_to :section

  validates :caption, :presence => true
  validates :content, :presence => true

  def post_sequence
    section.post.sequence if section.post
  end
end

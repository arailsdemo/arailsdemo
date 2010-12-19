module PostsHelper
  def post_link(position)
    link_to("#{position.to_s.capitalize} Post", post_url(@post.post(position).sequence)) if @post.post(position)
  end
end

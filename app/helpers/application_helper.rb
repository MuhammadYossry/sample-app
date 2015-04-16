module ApplicationHelper

  def topic_slug_path post
    topic_path(post.slug)
  end
end

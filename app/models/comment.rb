class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  validates  :title,   presence: true
  validates  :body,    presence: true, length: { maximum: 340 }
  validates  :user_id, presence: true
  validates  :post_id, presence: true
  default_scope -> { order(created_at: :desc) }

  def to_s
    title
  end
end

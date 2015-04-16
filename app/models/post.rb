class Post < ActiveRecord::Base
  belongs_to :user
  has_many  :comments, dependent: :destroy
  validates  :title,   presence: true
  validates  :body,    presence: true
  validates  :user_id, presence: true
  validates  :slug,    presence: true, uniqueness: true
  default_scope -> { order(created_at: :desc) }
  before_validation :set_slug

  def to_s
    title
  end
  
  private
    def set_slug
      self.slug = [Random.rand(100), self.title.parameterize].join("-")
    end

end

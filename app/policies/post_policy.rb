class PostPolicy
  attr_reader :current_user, :policy

  def initialize(current_user, post)
    @current_user = current_user
    @post = post
  end


  def update?
    post_owner?
  end

  def destroy?
    post_owner?
  end
  
  def owner?
      @current_user.id == @post.user_id
    end
  private
    def post_owner?
      @current_user.id == @post.user_id
    end

end
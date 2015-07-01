class CommentsController < ApplicationController  
  before_filter :authenticate_user!

  def create
    comment = Comment.new(comment_params)
    comment.post = Post.find(params[:post_id])
    comment.user = current_user
    comment.save!

    redirect_to comment.post
  end

  private

  def comment_params
    params.require(:comment).permit(:text)
  end
end  

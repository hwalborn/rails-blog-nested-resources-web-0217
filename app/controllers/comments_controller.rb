class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.post = Post.find(params[:post_id])
    @comment.save
    redirect_to @comment.post
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end

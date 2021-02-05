class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(com_params)
    redirect_to post_path(@post)
  end

  def com_params
    params.require(:comment).permit(:name, :comment)
  end
end

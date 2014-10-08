class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment].permit(:author, :body))
    redirect_to posts_path(@post)
  end
end

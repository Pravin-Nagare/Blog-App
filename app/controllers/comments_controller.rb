class CommentsController < ApplicationController

http_basic_authenticate_with :name => "ror", :password => "ror", :only => :destroy
def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment])
    redirect_to post_path(@post)
  end
end

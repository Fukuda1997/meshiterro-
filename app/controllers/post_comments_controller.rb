class PostCommentsController < ApplicationController
    
  def create
  end
  post_image = PostImage.find(params[:post_image_id])
  comment =current_user.post_comment.new(post_comment_params)
  comment.post_image_id = post_image.id
  comment.save
  redirect_to post_image_path(post_image)

  def destroy
      PostComment.find_by(id: params[:id], post_image_id: params[:post_image_id]).destroy
      redirect_to post_image_path(params[:post_image_id])
  end
  
  
end

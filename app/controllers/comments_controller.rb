class CommentsController < ApplicationController

  def create
    comment = current_user.comments.new comment_params
    if comment.save
    end
    redirect_to :back
  end

  def destroy
  end

  private
  def comment_params
  	params.require(:comment).permit :content, :entry_id
  end
end

class CommentsController < ApplicationController

  def create
    @comment = current_user.comments.new comment_params
    if @comment.save
      respond_to do |format|
        format.html { redirect_to :back }
        format.js
      end
    end
  end

  def destroy
  end

  private
  def comment_params
  	params.require(:comment).permit :content, :entry_id
  end
end

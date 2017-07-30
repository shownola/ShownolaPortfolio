class CommentsController < ApplicationController
  
  def createConsumer
    @comment = current_user.comments.build(comment_params)
  end
  
  private
  
  def comment_params
    params.require(:comment).permit(:content)
  end
end

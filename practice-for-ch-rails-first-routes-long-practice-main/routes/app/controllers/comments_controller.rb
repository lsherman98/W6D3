class CommentsController < ApplicationController

  def index
    if params[:author_id]
      @comments = Comment.where(author_id: params[:author_id])
      render json: @comments
    elsif params[:artwork_id]
      @comments = Comment.where(artwork_id: params[:artwork_id])
    end
  end

  def create
    @comment = Comment.new(comment_params)

    if @comment.save(comment_params)
      render json: @comment
    else
      render json: @comment.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment:detroy
    render json: @comment
  end

  def comment_params
    params.require(:comment).permit(:body, :author_id, :artwork_id)
  end
end

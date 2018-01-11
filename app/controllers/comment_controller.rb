class CommentsController < ApplicationController
  def create
    article = Article.find(params[:article_id])
    Comment.create(email: params[:email],
                    body: params[:comment],
                    article_id: article)
    flash[:success] = 'Your comment was added successfully'
    redirect_to article_path(article)
  end
end

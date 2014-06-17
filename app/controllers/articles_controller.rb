class ArticlesController < ApplicationController
   def index
    @articles = Articles.all
  end

  def new
  end

  def create
    @article = Article.new(params[:article])
    @article.save
    redirect_to articles_path(@article)
  end

  private
  def article_params
    params.require(:article).permit(:title, :text)  # <--  This is not working, *argh*
  end

  def show
    @article = Article.find(params[:id])
  end
end

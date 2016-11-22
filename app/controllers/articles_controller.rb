class ArticlesController < ApplicationController

  def index
    @articles = Articles.all
  end

  def show
    @article = Articles.find(params[:id])
  end

  def new
    @article = Articles.new(params[:title], params[:content])
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to #index page
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)
    redirect_to #index page
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to #index page
  end

  private

  def article_params
  end
end

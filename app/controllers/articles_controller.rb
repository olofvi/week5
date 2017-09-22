class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      binding.pry
      redirect_to article_path(@article)
    else
      flash[:error] = 'Errors when saving article'
      render :new
    end
  end

  def show
    binding.pry
    @article = Article.find(params[:id])
  end

  private
  def article_params
    params.require(:article).permit(:title, :content)
  end
end

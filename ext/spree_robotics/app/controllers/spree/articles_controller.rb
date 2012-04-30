class Spree::ArticlesController < ApplicationController

  def index
    @articles = Spree::Article.all
  end

  def show
    @article = Spree::Article.find(params[:id])
  end

end

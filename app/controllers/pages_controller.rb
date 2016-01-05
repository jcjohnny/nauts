class PagesController < ApplicationController
  def terms
  end

  def index
      @articles = Article.all
  end

  def welcome
  end

  def landing
  end
end

class ArticlesController < ApplicationController

    include ArticlesHelper

    def index
        @articles = Article.all
        @hash = Gmaps4rails.build_markers(@articles) do |article, marker|
          marker.lat article.latitude
          marker.lng article.longitude
        end
    end

    def show
        @article = Article.find(params[:id])
        @comment = Comment.new
        @comment.article_id = @article.id
    end

    def new
        @article = Article.new

    end

    def create
        @article = Article.new(article_params)
        if @article.save
            flash.notice = "You've succesfully created the Article"
            redirect_to @article
        else
            render new_article_path
        end
    end

    def edit
        @article = Article.find(params[:id])
    end

    def update
        @article = Article.find(params[:id])
        @article.update(article_params)
        flash.notice = "You've succesfully updated the Article"
        redirect_to @article
    end

    def destroy
        @article = Article.find(params[:id])
        @article.tags = []
        @article.destroy
        flash.notice = "Article Destroyed"
        redirect_to articles_path(@articles)
    end

end

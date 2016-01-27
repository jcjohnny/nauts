class ArticlesController < ApplicationController

    include ArticlesHelper

    def index
        @articles = Article.all
        @comments = Comment.all
    end

    def show
        @articles = Article.all
        @comments = Comment.all
        @article = Article.find(params[:id])
        @comment = Comment.new
        @comment.article_id = @article.id
    end

    def new
        @articles = Article.all
        @comments = Comment.all
        @article = Article.new

    end

    def create
        @articles = Article.all
        @comments = Comment.all
        @article = Article.new(article_params)
        if @article.save
            flash.notice = "You've succesfully created the Article"
            @article.users.push(current_user)
            redirect_to @article
        else
            render new_article_path
        end
    end

    def edit
        @articles = Article.all
        @comments = Comment.all
        @article = Article.find(params[:id])
    end

    def update
        @articles = Article.all
        @comments = Comment.all
        @article = Article.find(params[:id])
            if (@article.users.exists?(email: current_user.email) != true) || (@article.users.length >= @article.players)
                    @article.users.push(current_user)
            end
        @article.update(article_params)
        flash.notice = "You've succesfully updated the Article"
        redirect_to @article
    end

    def destroy
        @articles = Article.all
        @comments = Comment.all
        @article = Article.find(params[:id])
        @article.tags = []
        @article.users = []
        @article.destroy
        flash.notice = "Article Destroyed"
        redirect_to articles_path(@articles)
    end
end

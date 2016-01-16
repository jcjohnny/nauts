class TagsController < ApplicationController

    def index
        @tags = Tag.all
    end

    def show
        @articles = Article.all
        @comments = Comment.all
        @tag = Tag.find(params[:id])
    end

end

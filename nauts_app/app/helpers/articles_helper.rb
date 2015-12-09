module ArticlesHelper

    def article_params
        params.require(:article).permit(:title, :body, :rating, :address, :zipcode, :city, :state, :sport, :players, :tag_list, :image  )
    end

end

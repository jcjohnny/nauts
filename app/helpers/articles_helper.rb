module ArticlesHelper

    def article_params
        params.require(:article).permit(:title, :body, :rating, :address, :zipcode, :city, :state, :sport, :players, :latitude, :longitude, :location, :tag_list, :image, :geo_address, :player_names, :user, :user_list )
    end


end

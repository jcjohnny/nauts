class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
        t.string :title
        t.text :body
        t.string :address
        t.integer :zipcode
        t.string :city
        t.string :state
        t.string :sport
        t.integer :players
        t.text :player_names
        t.float :latitude
        t.float :longitude
        t.text :location
        t.text :setting
        t.text :month
        t.float :day
        t.text :time

        t.timestamps
    end
  end
end

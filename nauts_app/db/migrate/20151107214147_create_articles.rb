class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
        t.string :title
        t.text :body
        t.integer :rating
        t.string :address
        t.integer :zipcode
        t.string :city
        t.string :state
        t.string :sport
        t.integer :players
        t.text :player_names, array: true, default: []

        t.timestamps
    end
  end
end

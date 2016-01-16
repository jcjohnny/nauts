class Article < ActiveRecord::Base
    has_many :comments
    has_many :taggings
    has_many :tags, through: :taggings
    has_many :userarticles
    has_many :users, through: :userarticles

    has_attached_file :image
    validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]

    geocoded_by :geo_address
    after_validation :geocode

    def geo_address
        coded_address = []
        coded_address.push self.address
        coded_address.push self.city
        coded_address.push self.zipcode
        coded_address.join(" ")
    end


    def tag_list
        self.tags.collect do |tag|
            tag.name
        end.join(", ")
    end

    def tag_list=(tags_string)
        tag_names = tags_string.split(",").collect{|s| s.strip.downcase}.uniq
        new_or_found_tags = tag_names.collect { |name| Tag.find_or_create_by(name: name) }
        self.tags = new_or_found_tags
    end

    def user_list
        self.users.collect do |user|
            user.email
        end.join(", ")
    end


end

class Blogger < ApplicationRecord
    has_many :posts
    has_many :destinations, through: :posts

    validates :name, uniqueness: true
    validates :age, numericality: { greater_than: 0 }
    validates :bio, numericality: { minimum: 31 }

    def total_likes
        self.posts.sum {|p| p.likes}
    end

    def most_likes
        self.posts.max_by {|p| p.likes}
    end
end

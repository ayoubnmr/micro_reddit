class User < ApplicationRecord
has_many :posts
has_many :comments, through: :posts

    
validates :name, presence: true ,length: {in: 3..16}, uniqueness: true
validates :email, presence: true ,length:{maximum: 255}
validates :password, presence: true ,length:{in: 5..24}
end


class Comment < ApplicationRecord
  belongs_to :post
  has_one :user, through: :post
   
  validates :body , presence: true , length: {maximum: 255}

end

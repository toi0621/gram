class Recipe < ApplicationRecord

  belongs_to :user
  attachment :image
  has_many :likes
  has_many :liked_users, through: :likes, source: :user

  with_options presence: true do
    validates :title
    validates :body
    validates :image
  end
end

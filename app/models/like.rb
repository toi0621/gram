class Like < ApplicationRecord
  
  belongs_to :post
  belongs_to :user
  calidates_uniqueness_of :recipe_id, scope: :user
  
end

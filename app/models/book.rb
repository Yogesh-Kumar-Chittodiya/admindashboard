class Book < ApplicationRecord
  belongs_to :author
  belongs_to :genre

  def self.ransackable_attributes(auth_object = nil)
    ["author_id", "created_at", "genre_id", "id", "name", "price", "updated_at"]
  end
  
end

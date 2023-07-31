class Author < ApplicationRecord
    has_many :books

    def self.ransackable_associations(auth_object = nil)
        ["books"]
    end
    def self.ransackable_attributes(auth_object = nil)
        ["created_at", "first_name", "id", "last_name", "updated_at"]
    end

    def to_s
        "#{first_name} #{last_name}"
    end
  
end

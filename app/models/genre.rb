class Genre < ApplicationRecord
    has_many :books 
    has_many :authors, throgh: :books
end

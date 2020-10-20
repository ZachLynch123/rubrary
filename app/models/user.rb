class User < ApplicationRecord
    has_many :books 
    has_many :favorites, through: :books
end

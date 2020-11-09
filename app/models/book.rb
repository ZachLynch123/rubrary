class Book < ApplicationRecord
    has_many :comments 
    has_many :users, through: :comments

    scope :sort_desc, -> { order(:title) }
end

class Book < ApplicationRecord
    belongs_to :author
    has_many :genres, through: :author
end

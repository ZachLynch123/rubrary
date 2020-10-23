class Comment < ApplicationRecord
    belongs_to :books 
    belongs_to :users
    belongs_to :ratings
end

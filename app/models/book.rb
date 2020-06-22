class Book < ApplicationRecord
    belongs_to :category
    belongs_to :author
    belongs_to :publisher
    validates :title, presence: true, length: {minimum:3}

end

class Book < ApplicationRecord
    belongs_to :author
    has_many :bookstags
    has_many :tags, through: :bookstags, dependent: :destroy

    validates :title, length: { minimum: 5 }

end

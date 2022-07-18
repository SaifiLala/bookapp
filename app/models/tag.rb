class Tag < ApplicationRecord
    has_many :bookstags
    has_many :books, through: :bookstags
end

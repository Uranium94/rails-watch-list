class Movie < ApplicationRecord
  has_many :bookmarks
  validates :overview, length: { minimum: 1 }
  validates :title, length: { minimum: 6 }
end

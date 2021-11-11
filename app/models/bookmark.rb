class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :bookmarks
  validates [:movie_id, :list_id], uniqueness: true, presence: true
  validates :comment, length: { minimum: 6 }
end

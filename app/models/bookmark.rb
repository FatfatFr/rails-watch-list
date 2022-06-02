class Bookmark < ApplicationRecord
belongs_to :movie, :list
validates_uniqueness_of :movie_id, scope:[:list_id]
validates :comment, length: { minimum: 6 }
end

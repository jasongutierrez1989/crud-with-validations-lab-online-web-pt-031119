class Song < ApplicationRecord
  validates :title, presence: true
  validates :title, uniqueness: { scope: :release_year }
  validates :released, inclusion: { in: (true false)}
  validates :release_year, presence: true, unless: -> {released == false}
  validates :release_year, numericality: { less_than_or_equal_to: 2019 }
  validates :artist_name, presence: true
  validates :genre, presence: true
end

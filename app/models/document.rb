class Document < ApplicationRecord
  validates :name, :client, presence: true
  include PgSearch::Model
  pg_search_scope :search_by_name_and_year, against: [ :name, :year ],
      using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end

Document.new.errors[:name].any? # => false

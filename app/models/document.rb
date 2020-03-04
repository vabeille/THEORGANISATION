class Document < ApplicationRecord
  # belongs_to :dossier
  validates :name, :client, presence: true
  include PgSearch::Model
  pg_search_scope :search_by_name_client_year_cabinet_and_matiere, against: [ :name, :year, :cabinet, :matiere, :client ],
      using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end

Document.new.errors[:name].any? # => false

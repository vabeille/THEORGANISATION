class Dossier < ApplicationRecord
  has_many :documents, dependent: :destroy
end

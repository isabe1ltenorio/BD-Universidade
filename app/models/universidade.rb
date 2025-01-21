class Universidade < ApplicationRecord
  has_many :predios, dependent: :destroy
  validates :nome_universidade, presence: true
end

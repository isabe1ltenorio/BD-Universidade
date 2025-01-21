class Sala < ApplicationRecord
  belongs_to :predio
  validates :num_sala, presence: true
  validates :capacidade, presence: true
end

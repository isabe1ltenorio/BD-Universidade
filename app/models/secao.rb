class Secao < ApplicationRecord
  belongs_to :curso
  belongs_to :periodo
  has_one :periodo
  has_one :ministra
  validates :num_sala, presence: true
  validates :ano, presence: true
end


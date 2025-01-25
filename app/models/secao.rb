class Secao < ApplicationRecord
  belongs_to :curso
  belongs_to :periodo
  belongs_to :predio
  has_one :periodo
  has_one :ministra
  validates :num_sala, presence: true
  validates :ano, presence: true
end


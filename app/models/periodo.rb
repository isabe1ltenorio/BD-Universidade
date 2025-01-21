class Periodo < ApplicationRecord
  belongs_to :secao
  validates :hora_inicial, presence: true
  validates :data, presence: true
  validates :hora_final, presence: true
end

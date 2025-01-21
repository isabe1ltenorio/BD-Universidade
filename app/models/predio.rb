class Predio < ApplicationRecord
  belongs_to :universidade
  has_many :salas
  has_one :departamento
  validates :nome_predio, presence: true
end

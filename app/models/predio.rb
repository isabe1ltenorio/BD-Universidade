class Predio < ApplicationRecord
  belongs_to :universidade
  has_many :salas
  has_one :departamento
  has_many :secaos
  validates :nome_predio, presence: true
end

class Instrutor < ApplicationRecord
  belongs_to :departamento
  has_many :ministras
  has_many :alunos
  validates :nome_instrutor, presence: true
  validates :salario, presence: true
end

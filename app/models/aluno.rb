class Aluno < ApplicationRecord
  belongs_to :departamento
  belongs_to :instrutor
  validates :nome_aluno, presence: true
  validates :tot_creditos, presence: true
end

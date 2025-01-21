class Curso < ApplicationRecord
  belongs_to :departamento
  has_many :sessoes
  has_many :pre_requisitos
  validates :nome_curso, presence: true
  validates :creditos, presence: true
end

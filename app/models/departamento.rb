class Departamento < ApplicationRecord
  belongs_to :predio
  has_many :alunos
  has_many :cursos
  validates :nome_depto, presence: true
  validates :orcamento, presence: true
end

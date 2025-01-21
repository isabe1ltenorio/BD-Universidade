class Mentoria < ApplicationRecord
  belongs_to :aluno
  belongs_to :instrutor
  has_one :instrutor
  has_many :aluno
  validates :nota, presence: true
end

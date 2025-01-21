class Ministra < ApplicationRecord
  belongs_to :curso
  belongs_to :secao
  belongs_to :instrutor
  validates :ano, presence: true
  validates :semestre, presence: true
end

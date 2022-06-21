class Client < ApplicationRecord
  enum status: { aluno: 0, visitante: 1, mensalista: 2 }
  validates_presence_of :name
end

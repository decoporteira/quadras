class Client < ApplicationRecord
  enum status: { aluno: 0, visitante: 1, mensalista: 2 }
end

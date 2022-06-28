class Hour < ApplicationRecord
  has_many :schedulers

  enum hour: { '6:00': 0, '7:00': 1, '8:00': 2, '9:00': 3, '10:00': 4, '11:00': 5, '12:00': 6, '13:00': 7, '14:00': 8, '15:00': 9, '16:00': 10, '17:00': 11, '18:00': 12, '19:00': 13, '20:00': 14, '21:00': 15 }
  enum status: { available: 0, unavailable: 1 }
end

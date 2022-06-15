class Court < ApplicationRecord
  enum status: { available: 0, unavailable: 1 }
end

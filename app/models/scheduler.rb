class Scheduler < ApplicationRecord
  belongs_to :client
  belongs_to :court

  enum status: { available: 0, unavailable: 1 }
end

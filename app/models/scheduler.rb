class Scheduler < ApplicationRecord
  belongs_to :client
  belongs_to :court

  enum status: { available: 0, unavailable: 1 }

  validate :not_past_date
  #validates_uniqueness_of :court, scope: [:date]

  def not_past_date
    if date < Date.today
      errors.add(:date, " - Não pode fazer reserva para datas passadas")
    end
  end
end

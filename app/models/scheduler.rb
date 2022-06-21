class Scheduler < ApplicationRecord
  belongs_to :client
  belongs_to :court

  enum status: { available: 0, unavailable: 1 }

  validate :not_past_date

  def not_past_date
    if self.date < Date.today
      errors.add(:date, "Não pode fazer reservar para datas passadas")
    end
  end
end

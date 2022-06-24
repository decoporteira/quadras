class Scheduler < ApplicationRecord
  belongs_to :client
  belongs_to :court
  belongs_to :hour

  enum status: { available: 0, unavailable: 1 }

  validate :not_past_date
  validates_uniqueness_of :hour, :date, scope: :court

  def not_past_date
    if date < Date.today
      errors.add(:date, "Não pode fazer reservar para datas passadas")
    end
  end
end

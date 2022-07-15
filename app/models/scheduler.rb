class Scheduler < ApplicationRecord
  include TranslateEnum
  belongs_to :client
  belongs_to :court

  enum status: { available: 0, unavailable: 1 }
  translate_enum :status

  validate :not_past_date
  #validates_uniqueness_of :court, scope: [:date]
  #validate :not_same_hour

  def not_past_date
    if date < Date.today
      errors.add(:date, " - Não pode fazer reserva para datas passadas")
    end
  end
end

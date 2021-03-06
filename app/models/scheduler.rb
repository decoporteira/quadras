class Scheduler < ApplicationRecord
  include TranslateEnum
  belongs_to :client
  belongs_to :court

  enum status: { available: 0, unavailable: 1 }
  translate_enum :status
  validates_presence_of :start_time, :end_time
  validate :not_past_date, :court_available

  #validates_uniqueness_of :court, scope: [:date]

  # Return a scope for all interval overlapping the given interval, excluding the given interval itself
  #scope :overlapping, -> { where("id <> ? AND start_time <= ? AND ? <= end_time", scheduler.id, scheduler.end_time, scheduler.start_time) }
  def court_available
    if Scheduler.where(court_id: court_id, date: date, start_time: start_time...end_time).count > 0
      errors.add(:time, " - Esse horário já está reservado, ou está com conflito com outro horário.")
    end
  end

  def not_past_date
    if date < Date.today
      errors.add(:date, " - Não pode fazer reserva para datas passadas")
    end
  end
end

class Scheduler < ApplicationRecord
  #attr_accessor :start_time, :end_time
  include TranslateEnum
  belongs_to :client
  belongs_to :court
  #before_save :calculate_price
 
  enum status: { available: 0, unavailable: 1 }
  translate_enum :status
  validates_presence_of :start_time, :end_time
  validate :not_past_date, :court_available

  def court_available
    if Scheduler.where(court_id: court_id, date: date, start_time: start_time...end_time).count > 0
      errors.add(:time, " - Esse horário já está reservado, ou está com conflito com outro horário.")
    end
  end

  def not_past_date
    if date < Date.today
      errors.add(:date, "Não pode fazer reserva para datas passadas")
    end
  end

  def calculate_price 
    sum_value = (end_time.to_i - start_time.to_i) * 10
    self.total = sum_value

  end 

end

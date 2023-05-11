class Scheduler < ApplicationRecord
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

  def self.calculate_price(scheduler_params)
    court = CourtType.find_by id: scheduler_params[:court_type_id]
    if scheduler_params[:court_type_id] == 1
      calculate_per_hour(scheduler_params[:end_time], scheduler_params[:start_time])
    else
      calculate_per_hour(scheduler_params[:end_time], scheduler_params[:start_time])
    end

  end 

  def self.calculate_per_hour(end_time, start_time)
    total = end_time.to_i - start_time.to_i
  end

end

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
    # ERRO: estou procurando o Tipo_da_quadra pelo id do model Quadra, sempre virá errado
    # Preciso procurar o o Tipo_da_quadra por Court.court_type
    court_current = Court.find_by id: scheduler_params[:court_id]
    court_type_current = CourtType.find_by id: court_current.court_type_id
    if scheduler_params[:start_time].to_i < 18
      calculate_per_hour(scheduler_params[:end_time], scheduler_params[:start_time], court_type_current.day_price)
    else
      calculate_per_hour(scheduler_params[:end_time], scheduler_params[:start_time], court_type_current.night_price)
    end
  end 
  def self.calculate_per_hour(end_time, start_time, price)
    total_hours = (end_time.to_time - start_time.to_time)
    total = (total_hours / 3600) * price
  end

end

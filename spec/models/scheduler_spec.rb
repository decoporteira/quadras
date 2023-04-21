require "rails_helper"

RSpec.describe Scheduler, type: :model do
  it "1: Teste de datas que ainda não passaram" do
    expect { FactoryBot.create(:scheduler) }.to raise_error(ActiveRecord::RecordInvalid, 'A validação falhou: Data Não pode fazer reserva para datas passadas')
    # change { Scheduler.count }.by(1)
  end

  # it '2: Testa reserva de quadra com datas que já passaram' do
  #   status = 1
  #   date = "2023-09-09"
  #   start_time = "14:00:00" 
  #   end_time =  "14:00:00"
  #   court = 1 
  #   client = 1
  #   result = Scheduler.new(status, date, start_time, end_time, court, client )

  #   expect(result).to eq('Scheduler was successfully created.')

  #   end

  # expect { animal.update!(food_store: food_store) }.to raise_error("Validation failed: store can't be negative")
  end
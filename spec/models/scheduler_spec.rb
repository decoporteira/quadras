require "rails_helper"

RSpec.describe Scheduler, type: :model do
  it "1: Teste de datas que ainda não passaram" do
    expect { FactoryBot.create(:scheduler) }.to raise_error(ActiveRecord::RecordInvalid, 'A validação falhou: Data Não pode fazer reserva para datas passadas')
  end

  it '2: Testa reserva de quadra com datas que já passaram' do
    expect { FactoryBot.create(:scheduler2) }.to change { Scheduler.count }.by(1)
  end

  # expect { animal.update!(food_store: food_store) }.to raise_error("Validation failed: store can't be negative")
end
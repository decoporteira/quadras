require "rails_helper"

RSpec.describe Scheduler, type: :model do
  it "Teste de datas que ainda não passaram" do
    expect { FactoryBot.create(:scheduler) }.to change { Scheduler.count }.by(1)
  end
end

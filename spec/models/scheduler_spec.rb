require "rails_helper"

RSpec.describe Scheduler, type: :model do
  it "Teste de datas que ainda não passaram" do
    scheduler = FactoryBot.create(:scheduler)

    expect(scheduler.not_past_date).to eq(nil)
  end
end

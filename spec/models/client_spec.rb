require "rails_helper"

RSpec.describe Client, type: :model do
  it "Testa a criação de clientes" do
    expect { FactoryBot.create(:client) }.to change { Client.count }.by(1)
  end
end

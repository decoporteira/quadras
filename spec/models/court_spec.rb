require "rails_helper"

RSpec.describe Court, type: :model do
  it "Testa a criação de quadras" do
    expect { FactoryBot.create(:court) }.to change { Court.count }.by(1)
  end

  # let(:court) { FactoryBot.create(:court)}
  # expect(page).to have_content 'Topic was created successfully!'
end

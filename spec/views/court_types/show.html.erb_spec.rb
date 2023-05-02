require 'rails_helper'

RSpec.describe "court_types/show", type: :view do
  before(:each) do
    @court_type = assign(:court_type, CourtType.create!(
      name: "Name",
      day_price: "9.99",
      night_price: "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
  end
end

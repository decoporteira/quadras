require 'rails_helper'

RSpec.describe "court_types/index", type: :view do
  before(:each) do
    assign(:court_types, [
      CourtType.create!(
        name: "Name",
        day_price: "9.99",
        night_price: "9.99"
      ),
      CourtType.create!(
        name: "Name",
        day_price: "9.99",
        night_price: "9.99"
      )
    ])
  end

  it "renders a list of court_types" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
  end
end

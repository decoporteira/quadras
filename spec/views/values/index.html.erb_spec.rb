require 'rails_helper'

RSpec.describe "values/index", type: :view do
  before(:each) do
    assign(:values, [
      Value.create!(
        beach_day_value: "9.99",
        beach_night_value: "9.99",
        tennis_day_value: "9.99",
        tennis_night_value: "9.99"
      ),
      Value.create!(
        beach_day_value: "9.99",
        beach_night_value: "9.99",
        tennis_day_value: "9.99",
        tennis_night_value: "9.99"
      )
    ])
  end

  it "renders a list of values" do
    render
    assert_select "tr>td", text: "9.99".to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
  end
end

require 'rails_helper'

RSpec.describe "values/show", type: :view do
  before(:each) do
    @value = assign(:value, Value.create!(
      beach_day_value: "9.99",
      beach_night_value: "9.99",
      tennis_day_value: "9.99",
      tennis_night_value: "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
  end
end

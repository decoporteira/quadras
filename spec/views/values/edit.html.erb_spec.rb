require 'rails_helper'

RSpec.describe "values/edit", type: :view do
  before(:each) do
    @value = assign(:value, Value.create!(
      beach_day_value: "9.99",
      beach_night_value: "9.99",
      tennis_day_value: "9.99",
      tennis_night_value: "9.99"
    ))
  end

  it "renders the edit value form" do
    render

    assert_select "form[action=?][method=?]", value_path(@value), "post" do

      assert_select "input[name=?]", "value[beach_day_value]"

      assert_select "input[name=?]", "value[beach_night_value]"

      assert_select "input[name=?]", "value[tennis_day_value]"

      assert_select "input[name=?]", "value[tennis_night_value]"
    end
  end
end

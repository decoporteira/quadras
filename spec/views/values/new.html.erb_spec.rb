require 'rails_helper'

RSpec.describe "values/new", type: :view do
  before(:each) do
    assign(:value, Value.new(
      beach_day_value: "9.99",
      beach_night_value: "9.99",
      tennis_day_value: "9.99",
      tennis_night_value: "9.99"
    ))
  end

  it "renders new value form" do
    render

    assert_select "form[action=?][method=?]", values_path, "post" do

      assert_select "input[name=?]", "value[beach_day_value]"

      assert_select "input[name=?]", "value[beach_night_value]"

      assert_select "input[name=?]", "value[tennis_day_value]"

      assert_select "input[name=?]", "value[tennis_night_value]"
    end
  end
end

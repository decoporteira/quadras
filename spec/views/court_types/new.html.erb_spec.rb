require 'rails_helper'

RSpec.describe "court_types/new", type: :view do
  before(:each) do
    assign(:court_type, CourtType.new(
      name: "MyString",
      day_price: "9.99",
      night_price: "9.99"
    ))
  end

  it "renders new court_type form" do
    render

    assert_select "form[action=?][method=?]", court_types_path, "post" do

      assert_select "input[name=?]", "court_type[name]"

      assert_select "input[name=?]", "court_type[day_price]"

      assert_select "input[name=?]", "court_type[night_price]"
    end
  end
end

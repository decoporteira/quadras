require 'rails_helper'

RSpec.describe "court_types/edit", type: :view do
  before(:each) do
    @court_type = assign(:court_type, CourtType.create!(
      name: "MyString",
      day_price: "9.99",
      night_price: "9.99"
    ))
  end

  it "renders the edit court_type form" do
    render

    assert_select "form[action=?][method=?]", court_type_path(@court_type), "post" do

      assert_select "input[name=?]", "court_type[name]"

      assert_select "input[name=?]", "court_type[day_price]"

      assert_select "input[name=?]", "court_type[night_price]"
    end
  end
end

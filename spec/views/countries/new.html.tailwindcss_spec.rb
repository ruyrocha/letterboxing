require 'rails_helper'

RSpec.describe "countries/new", type: :view do
  before(:each) do
    assign(:country, Country.new(
      movie: nil,
      name: "MyString"
    ))
  end

  it "renders new country form" do
    render

    assert_select "form[action=?][method=?]", countries_path, "post" do

      assert_select "input[name=?]", "country[movie_id]"

      assert_select "input[name=?]", "country[name]"
    end
  end
end

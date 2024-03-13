require 'rails_helper'

RSpec.describe "releases/new", type: :view do
  before(:each) do
    assign(:release, Release.new(
      movie: nil,
      country: "MyString",
      type: "",
      rating: "MyString"
    ))
  end

  it "renders new release form" do
    render

    assert_select "form[action=?][method=?]", releases_path, "post" do

      assert_select "input[name=?]", "release[movie_id]"

      assert_select "input[name=?]", "release[country]"

      assert_select "input[name=?]", "release[type]"

      assert_select "input[name=?]", "release[rating]"
    end
  end
end

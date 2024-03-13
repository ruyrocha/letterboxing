require 'rails_helper'

RSpec.describe "movies/new", type: :view do
  before(:each) do
    assign(:movie, Movie.new(
      name: "MyString",
      date: 1,
      tagline: "MyString",
      description: "MyText",
      duration: 1,
      rating: 1.5
    ))
  end

  it "renders new movie form" do
    render

    assert_select "form[action=?][method=?]", movies_path, "post" do

      assert_select "input[name=?]", "movie[name]"

      assert_select "input[name=?]", "movie[date]"

      assert_select "input[name=?]", "movie[tagline]"

      assert_select "textarea[name=?]", "movie[description]"

      assert_select "input[name=?]", "movie[duration]"

      assert_select "input[name=?]", "movie[rating]"
    end
  end
end

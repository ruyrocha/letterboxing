require 'rails_helper'

RSpec.describe "movies/edit", type: :view do
  let(:movie) {
    Movie.create!(
      name: "MyString",
      date: 1,
      tagline: "MyString",
      description: "MyText",
      duration: 1,
      rating: 1.5
    )
  }

  before(:each) do
    assign(:movie, movie)
  end

  it "renders the edit movie form" do
    render

    assert_select "form[action=?][method=?]", movie_path(movie), "post" do

      assert_select "input[name=?]", "movie[name]"

      assert_select "input[name=?]", "movie[date]"

      assert_select "input[name=?]", "movie[tagline]"

      assert_select "textarea[name=?]", "movie[description]"

      assert_select "input[name=?]", "movie[duration]"

      assert_select "input[name=?]", "movie[rating]"
    end
  end
end

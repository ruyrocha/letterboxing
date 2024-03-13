require 'rails_helper'

RSpec.describe "movies/index", type: :view do
  before(:each) do
    assign(:movies, [
      Movie.create!(
        name: "Name",
        date: 2,
        tagline: "Tagline",
        description: "MyText",
        duration: 3,
        rating: 4.5
      ),
      Movie.create!(
        name: "Name",
        date: 2,
        tagline: "Tagline",
        description: "MyText",
        duration: 3,
        rating: 4.5
      )
    ])
  end

  it "renders a list of movies" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Tagline".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(4.5.to_s), count: 2
  end
end

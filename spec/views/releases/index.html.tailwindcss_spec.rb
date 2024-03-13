require 'rails_helper'

RSpec.describe "releases/index", type: :view do
  before(:each) do
    assign(:releases, [
      Release.create!(
        movie: nil,
        country: "Country",
        type: "Type",
        rating: "Rating"
      ),
      Release.create!(
        movie: nil,
        country: "Country",
        type: "Type",
        rating: "Rating"
      )
    ])
  end

  it "renders a list of releases" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Country".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Type".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Rating".to_s), count: 2
  end
end

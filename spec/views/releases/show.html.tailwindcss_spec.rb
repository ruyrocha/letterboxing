require 'rails_helper'

RSpec.describe "releases/show", type: :view do
  before(:each) do
    assign(:release, Release.create!(
      movie: nil,
      country: "Country",
      type: "Type",
      rating: "Rating"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/Type/)
    expect(rendered).to match(/Rating/)
  end
end

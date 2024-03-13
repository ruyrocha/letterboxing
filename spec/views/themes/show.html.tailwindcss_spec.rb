require 'rails_helper'

RSpec.describe "themes/show", type: :view do
  before(:each) do
    assign(:theme, Theme.create!(
      movie: nil,
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
  end
end

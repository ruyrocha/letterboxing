require 'rails_helper'

RSpec.describe "languages/show", type: :view do
  before(:each) do
    assign(:language, Language.create!(
      movie: nil,
      type: "Type",
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Type/)
    expect(rendered).to match(/Name/)
  end
end

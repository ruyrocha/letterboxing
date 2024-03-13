require 'rails_helper'

RSpec.describe "crews/show", type: :view do
  before(:each) do
    assign(:crew, Crew.create!(
      movie: nil,
      role: "Role",
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Role/)
    expect(rendered).to match(/Name/)
  end
end

require 'rails_helper'

RSpec.describe "genres/show", type: :view do
  before(:each) do
    assign(:genre, Genre.create!(
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

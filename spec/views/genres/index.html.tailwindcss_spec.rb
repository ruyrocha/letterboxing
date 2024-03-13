require 'rails_helper'

RSpec.describe "genres/index", type: :view do
  before(:each) do
    assign(:genres, [
      Genre.create!(
        movie: nil,
        name: "Name"
      ),
      Genre.create!(
        movie: nil,
        name: "Name"
      )
    ])
  end

  it "renders a list of genres" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
  end
end

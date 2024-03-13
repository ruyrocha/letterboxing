require 'rails_helper'

RSpec.describe "themes/index", type: :view do
  before(:each) do
    assign(:themes, [
      Theme.create!(
        movie: nil,
        name: "Name"
      ),
      Theme.create!(
        movie: nil,
        name: "Name"
      )
    ])
  end

  it "renders a list of themes" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
  end
end

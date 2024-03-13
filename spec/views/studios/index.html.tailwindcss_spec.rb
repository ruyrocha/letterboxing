require 'rails_helper'

RSpec.describe "studios/index", type: :view do
  before(:each) do
    assign(:studios, [
      Studio.create!(
        movie: nil,
        name: "Name"
      ),
      Studio.create!(
        movie: nil,
        name: "Name"
      )
    ])
  end

  it "renders a list of studios" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
  end
end

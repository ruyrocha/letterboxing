require 'rails_helper'

RSpec.describe "crews/index", type: :view do
  before(:each) do
    assign(:crews, [
      Crew.create!(
        movie: nil,
        role: "Role",
        name: "Name"
      ),
      Crew.create!(
        movie: nil,
        role: "Role",
        name: "Name"
      )
    ])
  end

  it "renders a list of crews" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Role".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
  end
end

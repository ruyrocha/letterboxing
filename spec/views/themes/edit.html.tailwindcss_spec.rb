require 'rails_helper'

RSpec.describe "themes/edit", type: :view do
  let(:theme) {
    Theme.create!(
      movie: nil,
      name: "MyString"
    )
  }

  before(:each) do
    assign(:theme, theme)
  end

  it "renders the edit theme form" do
    render

    assert_select "form[action=?][method=?]", theme_path(theme), "post" do

      assert_select "input[name=?]", "theme[movie_id]"

      assert_select "input[name=?]", "theme[name]"
    end
  end
end

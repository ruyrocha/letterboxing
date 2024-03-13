require 'rails_helper'

RSpec.describe "themes/new", type: :view do
  before(:each) do
    assign(:theme, Theme.new(
      movie: nil,
      name: "MyString"
    ))
  end

  it "renders new theme form" do
    render

    assert_select "form[action=?][method=?]", themes_path, "post" do

      assert_select "input[name=?]", "theme[movie_id]"

      assert_select "input[name=?]", "theme[name]"
    end
  end
end

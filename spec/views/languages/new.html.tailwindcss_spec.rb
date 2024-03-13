require 'rails_helper'

RSpec.describe "languages/new", type: :view do
  before(:each) do
    assign(:language, Language.new(
      movie: nil,
      type: "",
      name: "MyString"
    ))
  end

  it "renders new language form" do
    render

    assert_select "form[action=?][method=?]", languages_path, "post" do

      assert_select "input[name=?]", "language[movie_id]"

      assert_select "input[name=?]", "language[type]"

      assert_select "input[name=?]", "language[name]"
    end
  end
end

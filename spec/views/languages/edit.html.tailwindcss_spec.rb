require 'rails_helper'

RSpec.describe "languages/edit", type: :view do
  let(:language) {
    Language.create!(
      movie: nil,
      type: "",
      name: "MyString"
    )
  }

  before(:each) do
    assign(:language, language)
  end

  it "renders the edit language form" do
    render

    assert_select "form[action=?][method=?]", language_path(language), "post" do

      assert_select "input[name=?]", "language[movie_id]"

      assert_select "input[name=?]", "language[type]"

      assert_select "input[name=?]", "language[name]"
    end
  end
end

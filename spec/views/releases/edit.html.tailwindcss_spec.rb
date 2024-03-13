require 'rails_helper'

RSpec.describe "releases/edit", type: :view do
  let(:release) {
    Release.create!(
      movie: nil,
      country: "MyString",
      type: "",
      rating: "MyString"
    )
  }

  before(:each) do
    assign(:release, release)
  end

  it "renders the edit release form" do
    render

    assert_select "form[action=?][method=?]", release_path(release), "post" do

      assert_select "input[name=?]", "release[movie_id]"

      assert_select "input[name=?]", "release[country]"

      assert_select "input[name=?]", "release[type]"

      assert_select "input[name=?]", "release[rating]"
    end
  end
end

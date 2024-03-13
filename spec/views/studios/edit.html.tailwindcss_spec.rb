require 'rails_helper'

RSpec.describe "studios/edit", type: :view do
  let(:studio) {
    Studio.create!(
      movie: nil,
      name: "MyString"
    )
  }

  before(:each) do
    assign(:studio, studio)
  end

  it "renders the edit studio form" do
    render

    assert_select "form[action=?][method=?]", studio_path(studio), "post" do

      assert_select "input[name=?]", "studio[movie_id]"

      assert_select "input[name=?]", "studio[name]"
    end
  end
end

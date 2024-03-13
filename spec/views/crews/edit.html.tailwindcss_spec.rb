require 'rails_helper'

RSpec.describe "crews/edit", type: :view do
  let(:crew) {
    Crew.create!(
      movie: nil,
      role: "MyString",
      name: "MyString"
    )
  }

  before(:each) do
    assign(:crew, crew)
  end

  it "renders the edit crew form" do
    render

    assert_select "form[action=?][method=?]", crew_path(crew), "post" do

      assert_select "input[name=?]", "crew[movie_id]"

      assert_select "input[name=?]", "crew[role]"

      assert_select "input[name=?]", "crew[name]"
    end
  end
end

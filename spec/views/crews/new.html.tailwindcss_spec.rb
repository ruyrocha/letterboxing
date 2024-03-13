require 'rails_helper'

RSpec.describe "crews/new", type: :view do
  before(:each) do
    assign(:crew, Crew.new(
      movie: nil,
      role: "MyString",
      name: "MyString"
    ))
  end

  it "renders new crew form" do
    render

    assert_select "form[action=?][method=?]", crews_path, "post" do

      assert_select "input[name=?]", "crew[movie_id]"

      assert_select "input[name=?]", "crew[role]"

      assert_select "input[name=?]", "crew[name]"
    end
  end
end

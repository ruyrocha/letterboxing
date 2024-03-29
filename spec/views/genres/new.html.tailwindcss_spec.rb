require 'rails_helper'

RSpec.describe "genres/new", type: :view do
  before(:each) do
    assign(:genre, Genre.new(
      movie: nil,
      name: "MyString"
    ))
  end

  it "renders new genre form" do
    render

    assert_select "form[action=?][method=?]", genres_path, "post" do

      assert_select "input[name=?]", "genre[movie_id]"

      assert_select "input[name=?]", "genre[name]"
    end
  end
end

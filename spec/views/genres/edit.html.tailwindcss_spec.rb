require 'rails_helper'

RSpec.describe "genres/edit", type: :view do
  let(:genre) {
    Genre.create!(
      movie: nil,
      name: "MyString"
    )
  }

  before(:each) do
    assign(:genre, genre)
  end

  it "renders the edit genre form" do
    render

    assert_select "form[action=?][method=?]", genre_path(genre), "post" do

      assert_select "input[name=?]", "genre[movie_id]"

      assert_select "input[name=?]", "genre[name]"
    end
  end
end

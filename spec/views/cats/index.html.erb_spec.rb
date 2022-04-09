require 'rails_helper'

RSpec.describe "cats/index", type: :view do
  before(:each) do
    assign(:cats, [
      Cat.create!(
        avatar: "Avatar",
        name: "Name",
        bio: "MyText",
        color: "Color",
        age: 2,
        gender: "Gender",
        characteristics: "Characteristics"
      ),
      Cat.create!(
        avatar: "Avatar",
        name: "Name",
        bio: "MyText",
        color: "Color",
        age: 2,
        gender: "Gender",
        characteristics: "Characteristics"
      )
    ])
  end

  it "renders a list of cats" do
    render
    assert_select "tr>td", text: "Avatar".to_s, count: 2
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Color".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Gender".to_s, count: 2
    assert_select "tr>td", text: "Characteristics".to_s, count: 2
  end
end

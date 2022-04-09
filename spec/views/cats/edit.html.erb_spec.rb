require 'rails_helper'

RSpec.describe "cats/edit", type: :view do
  before(:each) do
    @cat = assign(:cat, Cat.create!(
      avatar: "MyString",
      name: "MyString",
      bio: "MyText",
      color: "MyString",
      age: 1,
      gender: "MyString",
      characteristics: "MyString"
    ))
  end

  it "renders the edit cat form" do
    render

    assert_select "form[action=?][method=?]", cat_path(@cat), "post" do

      assert_select "input[name=?]", "cat[avatar]"

      assert_select "input[name=?]", "cat[name]"

      assert_select "textarea[name=?]", "cat[bio]"

      assert_select "input[name=?]", "cat[color]"

      assert_select "input[name=?]", "cat[age]"

      assert_select "input[name=?]", "cat[gender]"

      assert_select "input[name=?]", "cat[characteristics]"
    end
  end
end

require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new(
      name: "MyString",
      type_of: 1,
      length: 1,
      width: 1,
      height: 1,
      weight: 1
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input[name=?]", "product[name]"

      assert_select "input[name=?]", "product[type_of]"

      assert_select "input[name=?]", "product[length]"

      assert_select "input[name=?]", "product[width]"

      assert_select "input[name=?]", "product[height]"

      assert_select "input[name=?]", "product[weight]"
    end
  end
end

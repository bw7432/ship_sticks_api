require 'rails_helper'

RSpec.describe "products/edit", type: :view do
  let(:product) {
    Product.create!(
      name: "MyString",
      type_of: 1,
      length: 1,
      width: 1,
      height: 1,
      weight: 1
    )
  }

  before(:each) do
    assign(:product, product)
  end

  it "renders the edit product form" do
    render

    assert_select "form[action=?][method=?]", product_path(product), "post" do

      assert_select "input[name=?]", "product[name]"

      assert_select "input[name=?]", "product[type_of]"

      assert_select "input[name=?]", "product[length]"

      assert_select "input[name=?]", "product[width]"

      assert_select "input[name=?]", "product[height]"

      assert_select "input[name=?]", "product[weight]"
    end
  end
end

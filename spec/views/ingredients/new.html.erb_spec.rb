require 'rails_helper'

RSpec.describe "ingredients/new", type: :view do
  before(:each) do
    assign(:ingredient, Ingredient.new(
      :stock_type => nil,
      :quantity => "9.99"
    ))
  end

  it "renders new ingredient form" do
    render

    assert_select "form[action=?][method=?]", ingredients_path, "post" do

      assert_select "input#ingredient_stock_type_id[name=?]", "ingredient[stock_type_id]"

      assert_select "input#ingredient_quantity[name=?]", "ingredient[quantity]"
    end
  end
end

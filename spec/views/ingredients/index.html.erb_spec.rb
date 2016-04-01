require 'rails_helper'

RSpec.describe "ingredients/index", type: :view do
  before(:each) do
    assign(:ingredients, [
      Ingredient.create!(
        :stock_type => nil,
        :quantity => "9.99"
      ),
      Ingredient.create!(
        :stock_type => nil,
        :quantity => "9.99"
      )
    ])
  end

  it "renders a list of ingredients" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end

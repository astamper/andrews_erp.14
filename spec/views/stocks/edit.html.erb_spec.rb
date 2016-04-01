require 'rails_helper'

RSpec.describe "stocks/edit", type: :view do
  before(:each) do
    @stock = assign(:stock, Stock.create!(
      :initial_quantity => 1.5,
      :current_quantity => 1.5,
      :purchase_price => 1.5,
      :batch_number => "MyString",
      :supplier => nil,
      :stock_type => nil,
      :component => nil,
      :order_item => nil
    ))
  end

  it "renders the edit stock form" do
    render

    assert_select "form[action=?][method=?]", stock_path(@stock), "post" do

      assert_select "input#stock_initial_quantity[name=?]", "stock[initial_quantity]"

      assert_select "input#stock_current_quantity[name=?]", "stock[current_quantity]"

      assert_select "input#stock_purchase_price[name=?]", "stock[purchase_price]"

      assert_select "input#stock_batch_number[name=?]", "stock[batch_number]"

      assert_select "input#stock_supplier_id[name=?]", "stock[supplier_id]"

      assert_select "input#stock_stock_type_id[name=?]", "stock[stock_type_id]"

      assert_select "input#stock_component_id[name=?]", "stock[component_id]"

      assert_select "input#stock_order_item_id[name=?]", "stock[order_item_id]"
    end
  end
end

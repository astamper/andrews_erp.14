require 'rails_helper'

RSpec.describe "stock_types/new", type: :view do
  before(:each) do
    assign(:stock_type, StockType.new(
      :name => "MyString",
      :ingredient => nil
    ))
  end

  it "renders new stock_type form" do
    render

    assert_select "form[action=?][method=?]", stock_types_path, "post" do

      assert_select "input#stock_type_name[name=?]", "stock_type[name]"

      assert_select "input#stock_type_ingredient_id[name=?]", "stock_type[ingredient_id]"
    end
  end
end

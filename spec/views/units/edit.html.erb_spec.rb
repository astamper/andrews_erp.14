require 'rails_helper'

RSpec.describe "units/edit", type: :view do
  before(:each) do
    @unit = assign(:unit, Unit.create!(
      :name => "MyString",
      :unit => nil,
      :conversion => "9.99",
      :component => nil,
      :ingredient => nil,
      :stock => nil,
      :order_item => nil
    ))
  end

  it "renders the edit unit form" do
    render

    assert_select "form[action=?][method=?]", unit_path(@unit), "post" do

      assert_select "input#unit_name[name=?]", "unit[name]"

      assert_select "input#unit_unit_id[name=?]", "unit[unit_id]"

      assert_select "input#unit_conversion[name=?]", "unit[conversion]"

      assert_select "input#unit_component_id[name=?]", "unit[component_id]"

      assert_select "input#unit_ingredient_id[name=?]", "unit[ingredient_id]"

      assert_select "input#unit_stock_id[name=?]", "unit[stock_id]"

      assert_select "input#unit_order_item_id[name=?]", "unit[order_item_id]"
    end
  end
end

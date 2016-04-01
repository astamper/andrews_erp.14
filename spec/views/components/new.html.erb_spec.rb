require 'rails_helper'

RSpec.describe "components/new", type: :view do
  before(:each) do
    assign(:component, Component.new(
      :quantity => "9.99",
      :stock => nil
    ))
  end

  it "renders new component form" do
    render

    assert_select "form[action=?][method=?]", components_path, "post" do

      assert_select "input#component_quantity[name=?]", "component[quantity]"

      assert_select "input#component_stock_id[name=?]", "component[stock_id]"
    end
  end
end

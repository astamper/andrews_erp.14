require 'rails_helper'

RSpec.describe "components/edit", type: :view do
  before(:each) do
    @component = assign(:component, Component.create!(
      :quantity => "9.99",
      :stock => nil
    ))
  end

  it "renders the edit component form" do
    render

    assert_select "form[action=?][method=?]", component_path(@component), "post" do

      assert_select "input#component_quantity[name=?]", "component[quantity]"

      assert_select "input#component_stock_id[name=?]", "component[stock_id]"
    end
  end
end

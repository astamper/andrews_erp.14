require 'rails_helper'

RSpec.describe "units/index", type: :view do
  before(:each) do
    assign(:units, [
      Unit.create!(
        :name => "Name",
        :unit => nil,
        :conversion => "9.99",
        :component => nil,
        :ingredient => nil,
        :stock => nil,
        :order_item => nil
      ),
      Unit.create!(
        :name => "Name",
        :unit => nil,
        :conversion => "9.99",
        :component => nil,
        :ingredient => nil,
        :stock => nil,
        :order_item => nil
      )
    ])
  end

  it "renders a list of units" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end

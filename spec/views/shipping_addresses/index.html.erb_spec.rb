require 'rails_helper'

RSpec.describe "shipping_addresses/index", type: :view do
  before(:each) do
    assign(:shipping_addresses, [
      ShippingAddress.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :address_1 => "Address 1",
        :address_2 => "Address 2",
        :city => "City",
        :state => "State",
        :country => "Country",
        :zip => "Zip",
        :email => "Email",
        :phone => "Phone",
        :customer => nil,
        :order => nil
      ),
      ShippingAddress.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :address_1 => "Address 1",
        :address_2 => "Address 2",
        :city => "City",
        :state => "State",
        :country => "Country",
        :zip => "Zip",
        :email => "Email",
        :phone => "Phone",
        :customer => nil,
        :order => nil
      )
    ])
  end

  it "renders a list of shipping_addresses" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address 1".to_s, :count => 2
    assert_select "tr>td", :text => "Address 2".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end

require 'rails_helper'

RSpec.describe "stock_types/show", type: :view do
  before(:each) do
    @stock_type = assign(:stock_type, StockType.create!(
      :name => "Name",
      :ingredient => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
  end
end

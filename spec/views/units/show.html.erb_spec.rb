require 'rails_helper'

RSpec.describe "units/show", type: :view do
  before(:each) do
    @unit = assign(:unit, Unit.create!(
      :name => "Name",
      :unit => nil,
      :conversion => "9.99",
      :component => nil,
      :ingredient => nil,
      :stock => nil,
      :order_item => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end

require 'rails_helper'

RSpec.describe "components/show", type: :view do
  before(:each) do
    @component = assign(:component, Component.create!(
      :quantity => "9.99",
      :stock => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(//)
  end
end

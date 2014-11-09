require 'rails_helper'

RSpec.describe "terminals/show", :type => :view do
  before(:each) do
    @terminal = assign(:terminal, Terminal.create!(
      :name => "Name",
      :description => "MyText",
      :other_attributes => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end

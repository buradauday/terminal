require 'rails_helper'

RSpec.describe "terminals/index", :type => :view do
  before(:each) do
    assign(:terminals, [
      Terminal.create!(
        :name => "Name",
        :description => "MyText",
        :other_attributes => "MyText2"
      ),
      Terminal.create!(
        :name => "Name",
        :description => "MyText",
        :other_attributes => "MyText2"
      )
    ])
  end

  it "renders a list of terminals" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText2".to_s, :count => 2
  end
end

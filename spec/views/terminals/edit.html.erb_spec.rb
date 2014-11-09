require 'rails_helper'

RSpec.describe "terminals/edit", :type => :view do
  before(:each) do
    @terminal = assign(:terminal, Terminal.create!(
      :name => "MyString",
      :description => "MyText",
      :other_attributes => "MyText"
    ))
  end

  it "renders the edit terminal form" do
    render

    assert_select "form[action=?][method=?]", terminal_path(@terminal), "post" do

      assert_select "input#terminal_name[name=?]", "terminal[name]"

      assert_select "textarea#terminal_description[name=?]", "terminal[description]"

      assert_select "textarea#terminal_other_attributes[name=?]", "terminal[other_attributes]"
    end
  end
end

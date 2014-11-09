require 'rails_helper'

RSpec.describe "terminals/new", :type => :view do
  before(:each) do
    assign(:terminal, Terminal.new(
      :name => "MyString",
      :description => "MyText",
      :other_attributes => "MyText"
    ))
  end

  it "renders new terminal form" do
    render

    assert_select "form[action=?][method=?]", terminals_path, "post" do

      assert_select "input#terminal_name[name=?]", "terminal[name]"

      assert_select "textarea#terminal_description[name=?]", "terminal[description]"

      assert_select "textarea#terminal_other_attributes[name=?]", "terminal[other_attributes]"
    end
  end
end

require 'spec_helper'

describe "fortunes/new" do
  before(:each) do
    assign(:fortune, stub_model(Fortune,
      :quotation => "MyText",
      :source => "MyString"
    ).as_new_record)
  end

  it "renders new fortune form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => fortunes_path, :method => "post" do
      assert_select "textarea#fortune_quotation", :name => "fortune[quotation]"
      assert_select "input#fortune_source", :name => "fortune[source]"
    end
  end
end

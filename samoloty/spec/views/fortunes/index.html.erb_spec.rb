require 'spec_helper'

describe "fortunes/index" do
  before(:each) do
    assign(:fortunes, [
      stub_model(Fortune,
        :quotation => "MyText",
        :source => "Source"
      ),
      stub_model(Fortune,
        :quotation => "MyText",
        :source => "Source"
      )
    ])
  end

  it "renders a list of fortunes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Source".to_s, :count => 2
  end
end

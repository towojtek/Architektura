require 'spec_helper'

describe "fortunes/show" do
  before(:each) do
    @fortune = assign(:fortune, stub_model(Fortune,
      :quotation => "MyText",
      :source => "Source"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(/Source/)
  end
end

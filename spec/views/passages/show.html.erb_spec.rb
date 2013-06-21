require 'spec_helper'

describe "passages/show" do
  before(:each) do
    @passage = assign(:passage, stub_model(Passage,
      :quote => "MyText",
      :title => "Title",
      :page => 1,
      :author => "Author"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(/Title/)
    rendered.should match(/1/)
    rendered.should match(/Author/)
  end
end

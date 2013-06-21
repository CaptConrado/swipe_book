require 'spec_helper'

describe "passages/index" do
  before(:each) do
    assign(:passages, [
      stub_model(Passage,
        :quote => "MyText",
        :title => "Title",
        :page => 1,
        :author => "Author"
      ),
      stub_model(Passage,
        :quote => "MyText",
        :title => "Title",
        :page => 1,
        :author => "Author"
      )
    ])
  end

  it "renders a list of passages" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
  end
end

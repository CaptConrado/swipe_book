require 'spec_helper'

describe "passages/edit" do
  before(:each) do
    @passage = assign(:passage, stub_model(Passage,
      :quote => "MyText",
      :title => "MyString",
      :page => 1,
      :author => "MyString"
    ))
  end

  it "renders the edit passage form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => passages_path(@passage), :method => "post" do
      assert_select "textarea#passage_quote", :name => "passage[quote]"
      assert_select "input#passage_title", :name => "passage[title]"
      assert_select "input#passage_page", :name => "passage[page]"
      assert_select "input#passage_author", :name => "passage[author]"
    end
  end
end

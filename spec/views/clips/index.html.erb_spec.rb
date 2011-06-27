require 'spec_helper'

describe "clips/index.html.erb" do
  before(:each) do
    assign(:clips, [
      stub_model(Clip,
        :file_uid => "File Uid",
        :file_name => "File Name",
        :file_ext => "File Ext",
        :file_size => 1
      ),
      stub_model(Clip,
        :file_uid => "File Uid",
        :file_name => "File Name",
        :file_ext => "File Ext",
        :file_size => 1
      )
    ])
  end

  it "renders a list of clips" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "File Uid".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "File Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "File Ext".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end

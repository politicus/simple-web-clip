require 'spec_helper'

describe "clips/show.html.erb" do
  before(:each) do
    @clip = assign(:clip, stub_model(Clip,
      :file_uid => "File Uid",
      :file_name => "File Name",
      :file_ext => "File Ext",
      :file_size => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/File Uid/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/File Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/File Ext/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end

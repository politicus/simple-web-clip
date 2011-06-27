require 'spec_helper'

describe "clips/edit.html.erb" do
  before(:each) do
    @clip = assign(:clip, stub_model(Clip,
      :file_uid => "MyString",
      :file_name => "MyString",
      :file_ext => "MyString",
      :file_size => 1
    ))
  end

  it "renders the edit clip form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => clips_path(@clip), :method => "post" do
      assert_select "input#clip_file_uid", :name => "clip[file_uid]"
      assert_select "input#clip_file_name", :name => "clip[file_name]"
      assert_select "input#clip_file_ext", :name => "clip[file_ext]"
      assert_select "input#clip_file_size", :name => "clip[file_size]"
    end
  end
end

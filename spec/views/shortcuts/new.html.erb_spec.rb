require 'spec_helper'
# require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe "shortcuts/new.html.erb" do
  it "should render the new shortcut form correctly" do
    render

    rendered.should have_field?("url")
    # rendered.should have_selector("form",
    #                                 :method => "post",
    #                                 :action => "create_shortcut_path"
    #                              )
  end
end

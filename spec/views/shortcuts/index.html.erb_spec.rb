require 'spec_helper'

describe "shortcuts/index.html.erb" do
  it "should render the list shortcuts page correctly" do
    Shortcut.create!(:url=>"http://one", :hash=>"/qqq", :visit_count=>2)
    render
    rendered.should contain("URL")
    rendered.should have_content("Hash")
    rendered.should have_content("Count")
  end
end

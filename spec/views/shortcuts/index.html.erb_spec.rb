require 'spec_helper'

describe "shortcuts/index.html.erb" do
  it "should render the list shortcuts page correctly" do
    render
    rendered.should have_content("URL")
    rendered.should have_content("Hash")
    rendered.should have_content("Count")
  end
end

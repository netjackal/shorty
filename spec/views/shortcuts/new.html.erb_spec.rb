require 'spec_helper'

describe "shortcuts/new.html.erb" do
  it "should render the new shortcut form correctly" do
    render

    rendered.should have_selector("form",
                                    :method => "post",
                                    :action => "create_shortcut_path"
                                 )
      rendered.should have_field("shortcut_url")
  end
end

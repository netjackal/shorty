require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ShortcutsController do
  # render_views
  describe "#new" do
    before do
      get :new
    end
    it "should return a successful response" do
      response.should be_success
    end
    it "should create a new shortcut object" do
      assigns(:shortcut).should_not be_nil
    end
  end
end

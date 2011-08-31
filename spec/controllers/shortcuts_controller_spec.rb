require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ShortcutsController do
  # render_views
  describe "#new" do
    it "should return a successful response" do
      get :new
      response.should be_success
    end
    it "should create a new blank shortcut object" do
      get :new
      assigns(:shortcut).should_not be nil
    end
  end
  describe "#create" do
    before do
      post :create, "shortcut" => { "url"=>"http://goo.gl" }
    end
    it "should create a new shortcut object" do
      assigns(:shortcut).should_not be_nil
      assigns(:shortcut).url.should == "http://goo.gl"
      assigns(:shortcut).hash.should == "/qwe123"
    end
    it "should redirect to list shortcut page" do
      response.should redirect_to shortcuts_path
    end
  end
  describe "#index" do
    it "should list all current shortcuts successfully" do
      get :index
      
    end
  end
end

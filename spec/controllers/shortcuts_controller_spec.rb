require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ShortcutsController do
  describe "#new" do
    it "should return a successful response" do
      get :new
      response.should be_success
    end
  end
end

require "spec_helper"

describe BetterErrors do
  context ".editor" do
    it "defaults to textmate" do
      subject.editor["foo.rb", 123].should == "txmt://open?url=file://foo.rb&line=123"
    end
    
    it "url escapes the filename" do
      subject.editor["&.rb", 0].should == "txmt://open?url=file://%26.rb&line=0"
    end
  end
end

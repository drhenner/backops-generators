require File.dirname(__FILE__) + '/../spec_helper'

describe <%= class_name %> do
  context "a valid instance" do
    it "should be valid" do
      <%= class_name %>.new.should be_valid
    end
  end
end

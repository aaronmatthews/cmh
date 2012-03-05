require 'spec_helper'

describe User do
  let(:user) { FactoryGirl.build(:user) }
  describe "#accounts" do
    it "should return an array" do
      user.accounts.class.should == Array
    end
  end
end

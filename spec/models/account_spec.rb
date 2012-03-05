require 'spec_helper'

describe Account do
  let(:account) { FactoryGirl.build(:account) }

  it "has a name with at least 1 character" do
    account.name.should be
    account.name.class == String
    account.name.length.should > 0
  end
  it "has a user" do
    account.user_id.should be
  end
  it "should have a current balance" do
    account.current_balance.should be
  end
  it "should have a starting balance" do
    account.starting_balance.should be
  end
  context "has an invalid name" do
    before do
      account.name = nil
    end
    it "is nil" do
      account.name.should == nil
    end
  end
end

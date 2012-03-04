require 'spec_helper'

describe HomeController do
  context 'user is logged in' do
    before do
      let(:user) { FactoryGirl.build(:user) }
    end
    it 'forwards user to dashboard' do
      pending 'to be added'
    end
  end
end

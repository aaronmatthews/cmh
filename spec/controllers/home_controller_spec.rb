require 'spec_helper'

describe HomeController do

  let(:user) { FactoryGirl.build(:user) }

  context 'user is logged in' do
    it 'forwards user to dashboard' do
      pending 'to be added'
    end
  end
end

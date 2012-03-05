class HomeController < ApplicationController

  before_filter :authenticate_user!

  def index
    @new_account = Account.new
  end


end

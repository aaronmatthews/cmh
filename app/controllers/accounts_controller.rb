class AccountsController < ApplicationController

  before_filter :authenticate_user!

  def create
    @account = Account.new({:user => current_user,
                            :name => params[:account][:name],
                            :starting_balance => params[:account][:current_balance],
                            :current_balance => params[:account][:current_balance]})
    if @account.valid?
      @account.save!
    else
      flash[:alert] = @account.errors.full_messages.join("<br />")
    end
    redirect_to :back
  end

  def destroy
    @account = Account.find params[:id]
    @account.destroy
    flash[:notice] = @account.name + " has been deleted."
    redirect_to :back
  end

  def update
    @account = Account.find params[:id]
    @account.update_attributes(params[:account])
    redirect_to :back
  end

end

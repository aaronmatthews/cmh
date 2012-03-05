class Account < ActiveRecord::Base
  belongs_to :user
  validates :name, :presence => true
  validates :name, :length => { :minimum => 1 }
  validates :user, :presence => true
  validates :current_balance, :presence => true
  validates :starting_balance, :presence => true
end

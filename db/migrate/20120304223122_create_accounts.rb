class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.integer :user_id
      t.string :name
      t.decimal :starting_balance, :current_balance, :avg_daily_in, :avg_daily_out, :precision => 12, :scale => 2, :default => 0
      t.timestamps
    end
  end
end

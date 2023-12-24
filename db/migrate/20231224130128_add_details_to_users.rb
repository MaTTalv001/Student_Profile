class AddDetailsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :nickname, :string
    add_column :users, :joinperiod, :integer
    add_column :users, :joinperioddetail, :string
  end
end

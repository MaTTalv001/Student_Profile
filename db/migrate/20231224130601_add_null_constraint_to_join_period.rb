class AddNullConstraintToJoinPeriod < ActiveRecord::Migration[7.0]
  def change
    change_column_null :users, :joinperiod, false
    change_column_null :users, :nickname, false
  end
end

class ChangeTimeToBeStringInInterviews < ActiveRecord::Migration[6.0]
  def up
    change_column :interviews, :time, :string
  end

  def down
    change_column :interviews, :time, :time
  end
end

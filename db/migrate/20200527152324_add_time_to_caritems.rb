class AddTimeToCaritems < ActiveRecord::Migration[5.2]
  def change
    add_column :caritems, :time, :datetime
  end
end

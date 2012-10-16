class AddUsersToTribes < ActiveRecord::Migration
  def change
    add_column :tribes, :users, :string
  end
end

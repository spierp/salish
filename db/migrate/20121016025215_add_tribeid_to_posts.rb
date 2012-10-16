class AddTribeidToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :tribe_id, :string
  end
end

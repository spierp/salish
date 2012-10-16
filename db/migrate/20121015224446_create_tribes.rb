class CreateTribes < ActiveRecord::Migration
  def change
    create_table :tribes do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end

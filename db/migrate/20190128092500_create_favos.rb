class CreateFavos < ActiveRecord::Migration[5.1]
  def change
    create_table :favos do |t|
      t.integer :user_id
      t.integer :feed_id

      t.timestamps
    end
  end
end

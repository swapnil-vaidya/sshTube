class CreateVideos < ActiveRecord::Migration[7.0]
  def change
    create_table :videos do |t|
      t.string :url
      t.integer :likeCount
      t.integer :dislikeCount
      t.string :comments
      t.integer :user_id
      t.timestamps
    end
  end
end

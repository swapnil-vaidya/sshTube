class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :profile_picture
      t.string :username
      t.string :liked_vid
      t.string :watch_history
      t.string :save_vid
      t.string :upload_list
      t.timestamps
    end
  end
end

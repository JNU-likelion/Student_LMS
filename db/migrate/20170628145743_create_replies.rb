class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.string :content
      t.integer :board_db_id

      t.timestamps null: false
    end
  end
end

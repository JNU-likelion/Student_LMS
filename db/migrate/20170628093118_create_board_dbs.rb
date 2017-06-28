class CreateBoardDbs < ActiveRecord::Migration
  def change
    create_table :board_dbs do |t|
      t.string :title
      t.string :object
      t.string :content
      # t.string :photo
      t.string :writer
      
      
      t.timestamps null: false
    end
  end
end

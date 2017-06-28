class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.string :t_class
      t.string :t_name
      t.string :s_name
      t.integer :s_score

      t.timestamps null: false
    end
  end
end

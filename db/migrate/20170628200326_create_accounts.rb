class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :acc_id
      t.string :acc_name
      t.string :acc_pwd
      t.string :acc_tel
      t.string :acc_level
      t.string :acc_grade
      t.string :acc_email
      
      t.timestamps null: false
    end
  end
end

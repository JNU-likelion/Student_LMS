class CreateLogins < ActiveRecord::Migration
  def change
    create_table :logins do |t|
      t.string :u_id
      t.string :u_name
      t.string :u_pwd
      t.string :re_pwd
      t.string :u_tel
      t.string :u_job
      t.string :u_grade
      t.string :u_email

      t.timestamps null: false
    end
  end
end

class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.integer :profile_id
      t.timestamps
    end
  end

  def down
    drop_table :users
  end
end

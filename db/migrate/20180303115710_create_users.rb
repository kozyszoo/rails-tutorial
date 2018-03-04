class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    add_index :users, :email, unique: true
    create_table :users do |t|
      t.string :name, :password_digest
      t.string :email, :password_digest

      t.timestamps
    end
  end
end

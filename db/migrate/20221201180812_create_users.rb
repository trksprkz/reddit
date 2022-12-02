class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username, unique: true, limit: 20, present?
      t.string :email, present?
      t.string :password, unique: true, limit: 20, present?
      t.integer :id, unique: true
    end
  end
end

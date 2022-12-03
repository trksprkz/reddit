class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title, presence :true, limit: 50, unique: true
      t.text :body, limit: 200, allow_blank
      t.string :author_username
      t.string :url

      t.timestamps
    end
  end
end

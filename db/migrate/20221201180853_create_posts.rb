require 'uri'
class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title, present?, limit: 50, unique: true
      t.text :body, limit: 200, allow_blank
      t.string :link, allow_blank, format: { with: URI.regexp }, if: lambda { 'link.present?' }
      t.timestamps
    end
  end
end

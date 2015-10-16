class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|

      t.timestamps null: false
      t.string :title
      t.text :body
      t.string :tags
      t.string :author
    end
  end
end

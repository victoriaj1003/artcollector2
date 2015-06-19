class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|

    	t.string :title
    	t.text :body
    	t.string :image
    	t.integer :article_id

      t.timestamps null: false
    end
  end
end

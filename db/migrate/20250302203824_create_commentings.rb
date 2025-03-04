class CreateCommentings < ActiveRecord::Migration[8.0]
  def change
    create_table :commentings do |t|
      t.text :response
      t.integer :main_page_id
      t.integer :parent_id

      t.timestamps
    end
  end
end

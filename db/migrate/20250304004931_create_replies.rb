class CreateReplies < ActiveRecord::Migration[8.0]
  def change
    create_table :replies do |t|
      t.text :reply
      t.integer :main_page_id
      t.integer :commenting_id
      t.integer :parent_id

      t.timestamps
    end
  end
end

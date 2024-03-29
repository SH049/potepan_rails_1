class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :content
      t.date :start_date
      t.date :end_date
      t.boolean :checkbox

      t.timestamps
    end
  end
end

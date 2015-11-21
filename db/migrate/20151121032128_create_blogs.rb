class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      
      t.string  :question
      t.string  :answer

      t.timestamps null: false
    end
  end
end

class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :question
      t.string :content

      t.timestamps null: false
    end
  end
end

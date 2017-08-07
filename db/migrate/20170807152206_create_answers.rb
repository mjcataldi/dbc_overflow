class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.integer :id
      t.integer :question_id
      t.integer :user_id
      t.text :body

      t.timestamps
    end
  end
end
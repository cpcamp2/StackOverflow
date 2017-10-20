class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
  	create_table :answers do |t|
      t.string :content
      t.boolean :best_answer, default: false
      t.integer :user_id
      t.integer :question_id
      t.timestamps
    end
  end
end

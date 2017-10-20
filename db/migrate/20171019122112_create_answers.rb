class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
  	create_table :answers do |t|
      t.string :content
      t.boolean :best_answer, default: false
      t.references :user_id, :null => false
      t.references :question_id, :null => false
      t.timestamps
    end
  end
end

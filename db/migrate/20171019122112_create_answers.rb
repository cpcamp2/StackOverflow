class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
  	create_table :answers do |t|
      t.string :content, presence: true
      t.boolean :best_answer, default: false
      t.references :author, foreign_key: true
      t.references :question, foreign_key: true

      t.timestamps
    end
  end
end

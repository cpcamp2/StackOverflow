class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
  	create_table :answers do |t|
      t.string :content, presence: true
      # t.boolean :best_answer, default: false
      t.references :user, :null => false
      t.references :question, :null => false
      t.timestamps
    end
  end
end

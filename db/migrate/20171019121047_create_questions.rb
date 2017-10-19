class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
  	create_table :questions do |t|
      t.string :title, presence: true
      t.string :content, presence: true
      t.integer :user_id, :null => false

      t.timestamps
    end
  end
end

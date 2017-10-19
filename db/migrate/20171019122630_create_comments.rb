class CreateComments < ActiveRecord::Migration[5.1]
  def change
  	create_table :comments do |t|
      t.string :content, presence: true
      t.string :commentable_type
      t.integer :commentable_id
      t.integer :user_id, :null => false
      t.timestamps
    end
    add_index :comments, [:commentable_type, :commentable_id]
  end
end

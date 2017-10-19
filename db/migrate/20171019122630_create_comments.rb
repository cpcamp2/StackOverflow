class CreateComments < ActiveRecord::Migration[5.1]
  def change
  	create_table :comments do |t|
      t.string :content, presence: true
      t.references :commenter, foreign_key: true
      t.references :commentable, polymorphic: true, index: true

      t.timestamps
    end
  end
end

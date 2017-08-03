class CreateDogs < ActiveRecord::Migration[5.1]
  def change
    create_table :dogs do |t|
      t.column :breed, :string
      t.column :name, :string
    end
  end
end

class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :comment_text
      t.belongs_to :user 
      t.belongs_to :book
      t.timestamps
    end
  end
end

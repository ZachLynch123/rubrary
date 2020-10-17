class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :description
      t.belongs_to :author
      t.belongs_to :genre
      t.timestamps
    end
  end
end

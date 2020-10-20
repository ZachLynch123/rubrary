class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :description
      t.belongs_to :user
      t.belongs_to :favorite
      t.timestamps
    end
  end
end

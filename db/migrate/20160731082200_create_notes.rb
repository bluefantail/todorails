class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.text :title
      t.text :description
      t.datetime :due

      t.timestamps null: false
    end
  end
end

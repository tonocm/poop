class CreateLists < ActiveRecord::Migration
  def change
    create_table :task do |t|
      t.string :name
      t.text :description
      t.string :due
      t.timestamps
    end
  end
end
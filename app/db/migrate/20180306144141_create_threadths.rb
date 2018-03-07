class CreateThreadths < ActiveRecord::Migration[5.1]
  def change
    create_table :threadths do |t|
      t.integer :id => false
      t.integer :value

      t.timestamps
    end
  end
end

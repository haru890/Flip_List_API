class CreateFlips < ActiveRecord::Migration[6.0]
  def change
    create_table :flips do |t|
      t.string :question
      t.string :answer
      t.boolean :check
      t.boolean :remind
      t.text :detail

      t.timestamps
    end
  end
end

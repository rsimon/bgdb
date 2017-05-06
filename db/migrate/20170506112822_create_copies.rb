class CreateCopies < ActiveRecord::Migration
  def change
    create_table :copies do |t|
      t.references :game, index: true, foreign_key: true
      t.string :language
      t.string :purchased_at
      t.string :purchase_price

      t.timestamps null: false
    end
  end
end

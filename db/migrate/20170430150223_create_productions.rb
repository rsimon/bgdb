class CreateProductions < ActiveRecord::Migration
  def change
    create_table :productions do |t|
      t.references :game, index: true, foreign_key: true
      t.references :publisher, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

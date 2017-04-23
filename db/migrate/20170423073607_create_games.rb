class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.references :publisher, index: true, foreign_key: true
      t.references :author, index: true, foreign_key: true
      t.references :expansion_to, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

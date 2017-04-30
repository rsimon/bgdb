class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.references :game, index: true, foreign_key: true
      t.string :lang

      t.timestamps null: false
    end
  end
end

class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.reference :publisher
      t.reference :author
      t.reference :extension_to

      t.timestamps null: false
    end
  end
end

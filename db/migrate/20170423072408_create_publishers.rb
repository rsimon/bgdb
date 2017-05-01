class CreatePublishers < ActiveRecord::Migration
  def change
    create_table :publishers do |t|
      t.string :name
      t.string :homepage
      t.string :logo_uid
      
      t.timestamps null: false
    end
  end
end

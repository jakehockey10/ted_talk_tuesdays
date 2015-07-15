class CreateTedTalks < ActiveRecord::Migration
  def change
    create_table :ted_talks do |t|
      t.string :name
      t.string :url
      t.string :url

      t.timestamps null: false
    end
    add_index :ted_talks, :name
    add_index :ted_talks, :url, unique: true
  end
end

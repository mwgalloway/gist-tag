class CreateFiles < ActiveRecord::Migration
  def change
    create_table :files do |t|
      t.string  :name, null: false
      t.integer :gist_id, null: false
      t.string  :raw_url, null: false

      t.timestamps(null: false)
    end
  end
end

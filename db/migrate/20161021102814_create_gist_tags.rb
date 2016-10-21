class CreateGistTags < ActiveRecord::Migration
  def change
    create_table :gist_tags do |t|
      t.integer :gist_id, null: false
      t.integer :tag_id, null: false

      t.timestamps(null: false)
    end
  end
end

class CreateSnippets < ActiveRecord::Migration
  def change
    create_table :snippets do |t|
      t.string   :name, null: false
      t.integer  :gist_id, null: false
      t.string   :raw_url, null: false

      t.timestamps(null: false)
    end
  end
end

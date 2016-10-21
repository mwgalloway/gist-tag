class CreateSnippets < ActiveRecord::Migration
  def change
    create_table :snippets do |t|
      t.string   :name, null: false
      t.integer  :gist_id
      t.string   :raw_url

      t.timestamps(null: false)
    end
  end
end

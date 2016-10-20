class CreateGists < ActiveRecord::Migration
  def change
    create_table :gists do |t|
      t.string   :github_id, null: false
      t.string   :description

      t.timestamps(null: false)
    end
  end
end

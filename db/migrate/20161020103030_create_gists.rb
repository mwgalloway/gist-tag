class CreateGists < ActiveRecord::Migration
  def change
    create_table :gists do |t|
      t.integer   :github_id

      t.timestamps(null: false)
    end
  end
end

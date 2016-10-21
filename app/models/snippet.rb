class Snippet < ActiveRecord::Base
  # Remember to create a migration!
  validates :name, presence: true
  validates :gist_id, presence: true
  validates :raw_url, presence: true

  belongs_to :gist
end

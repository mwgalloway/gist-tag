class Snippet < ActiveRecord::Base
  belongs_to :gist

  validates :name, presence: true
  validates :gist_id, presence: true
  validates :raw_url, presence: true
end

class Gist < ActiveRecord::Base
  # Remember to create a migration!
  validates :github_id, presence: true, uniqueness: true

end

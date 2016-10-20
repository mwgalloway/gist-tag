class Gist < ActiveRecord::Base
  validates :github_id, presence: true, uniqueness: true

  def get
    gist_response = RestClient.get("https://api.github.com/gists/#{self.github_id}", headers = { Authorization: "token #{ENV['GITHUB_TOKEN']}" })

    JSON.parse(gist_response)
  end

  def name

  end
end

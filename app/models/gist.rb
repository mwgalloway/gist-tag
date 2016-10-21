class Gist < ActiveRecord::Base
  has_many  :gist_tags
  has_many  :tags, through: :gist_tags
  has_many  :snippets

  validates :github_id, presence: true, uniqueness: true

  def set_description(gist)
    if gist.description.empty?
      # if descriptions is empty, first filename is description
      self.description = gist.files.first.first
    else
      self.description = gist.description
    end
  end

end

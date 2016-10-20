class Gist < ActiveRecord::Base

  validates :github_id, presence: true, uniqueness: true
  has_many  :snippets


  def set_description(gist)
    if gist.description.empty?
      # if descriptions is empty, first filename is description
      self.description = gist.files.first.first
    else
      self.description = gist.description
    end
  end

end

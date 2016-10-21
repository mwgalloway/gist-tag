class GistTag < ActiveRecord::Base
  belongs_to :gist
  belongs_to :tag

  validates_presence_of :gist_id, :tag_id
  validates_uniqueness_of :gist_id, scope: :tag_id
end

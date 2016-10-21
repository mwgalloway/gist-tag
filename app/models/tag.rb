class Tag < ActiveRecord::Base
  has_many :gist_tags
  has_many :gists, through: :gist_tags

  validates :name, presence: :true, uniqueness: :true
end

helpers do

  def parse_tags(tag_string)
    tag_string.split(', ').map { |tag| Tag.find_or_create_by(name: tag) }
  end

  def stringify_tags(tags)
    tags.map{ |tag| tag.name }.join(', ')
  end

end

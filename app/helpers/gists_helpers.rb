helpers do

  def parse_gists(gists)

    gists.map do |gist|
      new_gist = Gist.find_or_create_by(github_id: gist['id'])
      new_gist.set_description(gist)
      new_gist.snippets = parse_files(gist)
      new_gist.save
      new_gist
    end

  end


  def parse_files(gist)

    gist.files.map do |file|
      name = file[1].filename
      raw_url = file[1].raw_url
      Snippet.where(name: name, raw_url: raw_url).first_or_create
    end

  end

end

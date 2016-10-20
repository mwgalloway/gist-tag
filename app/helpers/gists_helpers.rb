helpers do
  def find_gist_description(gist)
    if gist["description"].empty?
      gist["files"].keys.first
    else
      gist["description"]
    end
  end

  def jhash_to_gists(jhash)
    jhash.each do |gist|
     Gist.find_or_create_by(github_id: gist["id"])
    end
  end

end

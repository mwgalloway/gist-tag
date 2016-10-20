helpers do
  def find_gist_description(gist)
    if gist["description"].empty?
      gist["files"].keys.first
    else
      gist["description"]
    end
  end
end

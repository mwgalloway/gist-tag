get '/' do
  redirect '/gists'
end

before '/' do
  @client = Octokit::Client.new(:access_token => ENV["GITHUB_TOKEN"])
end




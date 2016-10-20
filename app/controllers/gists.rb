get '/gists' do

  @client = Octokit::Client.new(:access_token => ENV["GITHUB_TOKEN"])
  @gists = parse_gists(@client.gists)
  erb :'/gists/index'
end


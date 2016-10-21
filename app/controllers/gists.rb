get '/gists' do
  @client = Octokit::Client.new(:access_token => ENV["GITHUB_TOKEN"])
  @gists = parse_gists(@client.gists)
  erb :'/gists/index'
end

get '/gists/:id' do
  @gist = Gist.find_by(id: params[:id])

  erb :'/gists/show'
end

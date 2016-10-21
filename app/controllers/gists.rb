get '/gists' do
  if request.xhr?
    @gists = Gist.all
    erb :'/gists/index', layout: false
  else
    @client = Octokit::Client.new(:access_token => ENV["GITHUB_TOKEN"])
    @gists = parse_gists(@client.gists)
    erb :'/gists/index'
  end
end

get '/gists/:id' do
  @gist = Gist.find_by(id: params[:id])

  erb :'/gists/show', layout: !request.xhr?
end

post '/gists/:id/tags' do
  @gist = Gist.find_by(id: params[:id])
  @gist.tags += parse_tags(params[:tags])
  if @gist.save
    redirect "/gists/#{@gist.id}"
  else
    @errors = @gist.errors.full_messages
    erb :'/gists/show'
  end
end

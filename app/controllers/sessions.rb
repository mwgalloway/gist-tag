get '/sessions/new' do
  client = Octokit::Client.new
  url = client.authorize_url(ENV["CLIENT_ID"], :scope => 'gist')
  redirect url
end

post '/sessions' do
  @user = User.authenticate(params[:user])
  if @user
    session[:user_id] = @user.id
    redirect '/'
  else
    @errors = ["The email and password provided did not match our records"]
    erb :'/sessions/new'
  end
end

delete '/sessions' do
  session[:user_id] = nil
  redirect '/'
end

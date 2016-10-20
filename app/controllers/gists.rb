get '/gists' do
  gists = @client.gists

  gists.each
  erb :'/gists/index'
end


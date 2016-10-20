get '/gists' do
  api_result = RestClient.get("https://api.github.com/users/mwgalloway/gists", headers = { Authorization: "token #{ENV['GITHUB_TOKEN']}" })

  jhash = JSON.parse(api_result)

  @gist_names = jhash.map{ |gist| find_gist_description(gist) }
  jhash_to_gists(jhash)

  @gists = Gist.all
  erb :'/gists/index'
end


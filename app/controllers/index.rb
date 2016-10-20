# get '/' do
#   redirect '/gists'
# end

get '/' do
  api_result = RestClient.get("https://api.github.com/users/mwgalloway/gists", headers = { Authorization: "token #{ENV['GITHUB_TOKEN']}" })
  jhash = JSON.parse(api_result)

  @gists = jhash.map{|gist| find_gist_description(gist) }
  jhash_to_gists(jhash)

  erb :'/gists/index'
end



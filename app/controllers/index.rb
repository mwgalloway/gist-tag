get '/' do
  @gists = Gist.all
  @tags = Tag.all
  erb :'/index'
end

get '/' do 
  erb :index
end

post '/tweets' do
  redirect "/tweets/#{params[:username]}"
end

get '/tweets/:username' do
  @name = params[:username]
  erb :results
end


#  @tweets = CLIENT.user_timeline(name, {:count => 10})
post '/gettweets' do
  # "#{params[:username]}"
  CLIENT.user_timeline(params[:username], {:count => 10}).to_json
end

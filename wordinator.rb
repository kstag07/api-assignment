require 'sinatra'
require 'json'

# get '/:name/:city' do
#   "#{params[:name]} and #{params[:city]}"
# end

get '/:key1/:key2' do
  content_type :json
  value1 = params[:key1]
  value2 = params[:key2]
   f = value1.to_s.chars.sort == value2.to_s.chars.sort
  {:word1 => value1, :word2 => value2, anagram?: f}.to_json
end

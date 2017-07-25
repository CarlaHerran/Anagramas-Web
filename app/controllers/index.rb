get '/' do
  erb :index
end

get '/:user_word' do
	@new_word = params[:user_word]
  canonical = Word.new(name: @new_word).canonical_maker
  @anagrams = Word.where(canonical: canonical)
  erb :word
end

post '/new_word' do
  redirect to ("/#{params[:user_word]}")
end
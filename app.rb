require('sinatra')
require('sinatra/reloader')
require('./lib/definitions')
require('./lib/words')
also_reload('lib/**/*.rb')

get("/") do 
	@words = Word.all()
	erb(:index)
end

post('/single_word') do
  single_word = params.fetch('single_word')
  single_word = Word.new(single_word)
  single_word.save()
  @words = Word.new({:single_word => single_word, :done => false})
  if @words.save()
  	rerb(:words)
  else
  	erb(:index)
  end
end

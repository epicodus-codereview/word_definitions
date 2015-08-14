class Word
	@@words = []

	define_method(:initialize) do |single_word|
		@single_word = single_word
		@id = @@words.length().+(1)
	end

	define_method(:single_word) do 
		@single_word
	end
		
end
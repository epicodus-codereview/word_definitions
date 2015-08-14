class Definitions
	@@definition = []

	define_method(:initialize) do |word_definition|
		@word_definition = word_definition
		@id = @@definition.length().+(1)
	end

	define_method(:word_definition) do 
		@word_definition
	end
end
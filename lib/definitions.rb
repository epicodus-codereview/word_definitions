class Definitions
	@@definition = []

	define_method(:initialize) do |word_definition|
		@word_definition = word_definition
		@id = @@definition.length().+(1)
	end

	define_method(:word_definition) do 
		@word_definition
	end

	define_method(:id) do
    @id
  end

  define_singleton_method(:clear) do
  	@@definition = []
	end

	define_singleton_method(:all) do
    @@definition
  end

  define_method(:save) do
    @@definition.push(self)
  end

  define_singleton_method(:find) do |id|
    found_definition = nil
    @@definition.each() do |word_definition|
      if word_definition.id().eql?(id)
        found_definition = word_definition
      end
    end
    found_definition
  end
end

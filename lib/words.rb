class Word
  @@words = []

  define_method(:initialize) do |single_word|
    @single_word = single_word
    @id = @@words.length().+(1)
    
  end

  define_method(:single_word) do
    @single_word
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:all) do
    @@words
  end

  # define_method(:save) do
  #   @@words.push(self)
  # end

  # define_singleton_method(:clear) do
  #   @@words = []
  # end

  # define_singleton_method(:find) do |id|
  #   found_word = nil
  #   @@words.each() do |single_word|
  #     if single_word.id().eql?(id)
  #       found_word = single_word
  #     end
  #   end
  #   found_word
  # end
end
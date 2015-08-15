class Word
  #attr_reader(:single_word, :definitions)
  @@all_words = []

  define_method(:initialize) do |single_word|
    @single_word = single_word
  end

  define_method(:single_word) do
    @single_word
  end

  define_singleton_method(:all) do
    []
  end
end
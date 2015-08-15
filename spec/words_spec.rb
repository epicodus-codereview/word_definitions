require('rspec')
require('words')

describe(Word) do
  before() do
    Word.clear()
  end
end

describe("#single_word") do
	it('returns a single word from the Words list') do 
		test_word = Word.new("Ruby")
		expect(test_word.single_word).to(eq("Ruby"))
	end
end

describe(".all") do 
  it("word list is empty at first") do
    expect(Word.all()).to(eq([]))
  end
end


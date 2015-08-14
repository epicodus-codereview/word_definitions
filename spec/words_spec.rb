require('rspec')
require('words')
#require('definitions')


describe("#single_word") do
	it('returns a single word from the Words list') do 
		test_word = Word.new("Ruby")
		expect(test_word.single_word).to(eq("Ruby"))
	end
end

describe("#id") do
    it("returns the id of the single word") do
      test_word = Word.new("Ruby")
      expect(test_word.id()).to(eq(1))
  end
end

# describe("#word_definition") do
#     it("initially returns an empty array of definitions for single words") do
#       test_word = Word.new("Ruby")
#       expect(test_word.word_definition()).to(eq([]))
#     end
# end

describe('.all') do
  it("words list is empty at first") do
    expect(Word.all()).to(eq([]))
  end
end

describe('#save') do
  it("adds a word to the array of saved words") do
    test_word = Word.new("Ruby")
    test_word.save()
    expect(Word.all()).to(eq([test_word]))
  end
end

describe(".clear") do
  it("empties all saved words") do
    Word.new("Ruby").save()
    Word.clear()
    expect(Word.all()).to(eq([]))
  end
end

describe(".find") do
  it("returns a word by its id number") do
    test_word = Word.new("Ruby")
    test_word.save()
    test_word2 = Word.new("Code")
    test_word2.save()
    expect(Word.find(test_word.id())).to(eq(test_word))
  end
end

require('rspec')
require('words')
require('definitions')

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

describe("#id") do
    it("returns the id of the single word") do
      test_word = Word.new("Ruby")
      expect(test_word.id()).to(eq(1))
  end
end

describe('.all') do
  it("words list is empty at first") do
    expect(Word.all()).to(eq([]))
  end
end

describe('#save') do
  it("adds a word to the array of words") do
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
    expect(Word.find(test_word2.id())).to(eq(test_word2))
  end
end

describe('#definition') do
    it('returns an empty definition') do
      test_word = Word.new("Ruby")
      test_word.save()
      expect(test_word.definition).to(eq([]))
    end
  end

describe('#add_definition') do
  it("adds a new definition") do
    test_word = Word.new("Ruby")
    test_definition = Definition.new("an intense purplish-red color.")
    test_word.add_definition(test_definition)
    expect(test_word.definition()).to(eq([test_definition]))
  end
end

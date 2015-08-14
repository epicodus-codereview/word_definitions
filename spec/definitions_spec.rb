require('rspec')
require('definitions')

describe('Definitions') do
  before() do
    Definitions.clear()
  end
end

describe("#word_definition") do
  it("returns a definition of a single word") do
    test_definition = Definitions.new("an intense purplish-red color.")
    expect(test_definition.word_definition()).to(eq("an intense purplish-red color."))
  end
end

describe("#id") do
it("returns the id of a word definition") do
    test_definition = Definitions.new("an intense purplish-red color.")
    test_definition.save()
    expect(test_definition.id()).to(eq(1))
  end
end

describe(".clear") do
  it("empties all of the saved word definitions") do
    Definitions.new("an intense purplish-red color.").save()
    Definitions.clear()
    expect(Definitions.all()).to(eq([]))
  end
end

describe('.all') do
  it("word definitions list is empty at first") do
    expect(Definitions.all()).to(eq([]))
  end
end

describe("#save") do
  it("adds a word definition to the array of saved definitions") do
    test_definition = Definitions.new("an intense purplish-red color.")
    test_definition.save()
    expect(Definitions.all()).to(eq([test_definition]))
  end
end

describe(".find") do
  it('returns the word definition by its id number') do
    test_definition = Definitions.new("an intense purplish-red color.")
    test_definition.save()
    test_definition2 = Definitions.new("program instructions.")
    test_definition2.save()
    expect(Definitions.find(test_definition.id())).to(eq(test_definition))
  end
end
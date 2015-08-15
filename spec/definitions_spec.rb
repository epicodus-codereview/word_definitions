require('rspec')
require('definitions')

describe('Definition') do
  before() do
    Definition.clear()
  end
end

describe("#word_definition") do
  it("returns a definition of a single word") do
    test_definition = Definition.new("an intense purplish-red color.")
    expect(test_definition.word_definition()).to(eq("an intense purplish-red color."))
  end
end

describe("#id") do
it("returns the id of a word definition") do
    test_definition = Definition.new("an intense purplish-red color.")
    test_definition.save()
    expect(test_definition.id()).to(eq(1))
  end
end

describe(".clear") do
  it("empties all of the saved word definitions") do
    Definition.new("an intense purplish-red color.").save()
    Definition.clear()
    expect(Definition.all()).to(eq([]))
  end
end

describe('.all') do
  it("word definitions list is empty at first") do
    expect(Definition.all()).to(eq([]))
  end
end

describe("#save") do
  it("adds a word definition to the array of saved definitions") do
    test_definition = Definition.new("an intense purplish-red color.")
    test_definition.save()
    expect(Definition.all()).to(eq([test_definition]))
  end
end

describe(".find") do
  it('returns the word definition by its id number') do
    test_definition = Definition.new("an intense purplish-red color.")
    test_definition.save()
    test_definition2 = Definition.new("program instructions.")
    test_definition2.save()
    expect(Definition.find(test_definition2.id())).to(eq(test_definition2))
  end
end
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


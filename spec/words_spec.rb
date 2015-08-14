require('rspec')
require('words')
# require('definitions')

describe("#single_word") do
	it('returns a single word from the Words list') do 
		test_word = Word.new("Ruby")
		expect(test_word.single_word).to(eq("Ruby"))
	end
end
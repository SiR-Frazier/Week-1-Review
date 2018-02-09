require('rspec')
require('code_review1')
require('pry')

describe("#code_review1") do
  it("returns message 'These words are anagrams' if the two input words contain the same letters in a different order") do
    words = Word.new(word1, word2)
    expect(words.is_anagram("dog","god")).to(eq("These words are anagrams"))
  end
end

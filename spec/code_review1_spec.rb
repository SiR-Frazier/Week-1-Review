require('rspec')
require('code_review1')
require('pry')

describe("#anagram") do
  it("returns message 'These words are anagrams' if the two input words contain the same letters in a different order") do
    words = Words.new(@word1, @word2)
    expect(words.anagram_check("dog","god")).to(eq("These words are anagrams"))
  end
end

require('rspec')
require('code_review1')
require('pry')

describe("#anagram") do
  it("returns message 'These words are anagrams' if the two input words contain the same letters in a different order") do
    words = Words.new(@word1, @word2)
    expect(words.anagram_check("dog","god")).to(eq("These words are anagrams"))
  end

  # it("returns message 'These words are anagrams' if the two input words contain the same letters regardless of order or case ") do
  #   words = Words.new(@word1, @word2)
  #   expect(words.lowercase_check("Cat","AcT")).to(eq("These words are anagrams"))
  # end

  it("returns 'You need to submit actual words' if there are no vowels included in the words") do
    words = Words.new(@word1, @word2)
    expect(words.vowel_check("yrrb","rbyr")).to(eq("You need to submit actual words"))
  end

  it("returns 'These words have no letter matches and are antigrams' if the input words have zero matching letters") do
    words = Words.new(@word, @word2)
    expect(words.antigram_check("round", "quick")).to(eq("These words have no letter matches and are antigrams"))
  end

end

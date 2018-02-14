require('rspec')
require('code_review1')
require('pry')

describe("#anagram") do
  it("returns message 'These words are anagrams' if the two input words contain the same letters in a different order") do
    words = Words.new("dog","god")
    expect(words.anagram_check("dog","god")).to(eq("These words are anagrams"))
  end

  it("returns 'You need to submit actual words' if there are no vowels included in the words") do
    words = Words.new("yrrb","rbyr")
    expect(words.vowel_check("yrrb","rbyr")).to(eq("You need to submit actual words"))
  end

  it("returns 'These words have no letter matches and are antigrams' if the input words have zero matching letters") do
    words = Words.new("brick", "jumpy")
    expect(words.antigram_check("brick", "jumpy")).to(eq("These words have no letter matches and are antigrams"))
  end

  it("returns 'This is an anagram' if the words or phrases share the same letters in a different order") do
    words = Words.new("the eyes", "they see")
    expect(words.anagram_check("the eyes", "they see")).to(eq("These words are anagrams"))
  end
end

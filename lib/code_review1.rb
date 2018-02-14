class Words
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end

  def anagram_check(word1, word2)
    word1_array = @word1.downcase.split("")
    word2_array = @word2.downcase.split("")
    word1_sort = word1_array.sort
    word2_sort = word2_array.sort
    if (word1_sort == word2_sort)
      "These words are anagrams"
    else
     "These words are not anagrams"
    end
  end

  def vowel_check(word1, word2)
    if @word1.scan(/[aeiou]/) || @word2.scan(/[aeiou]/) == 0
      "You need to submit actual words"
    end
  end

  # def vowel_check(word1, word2)
  #   if !@word1.scan(/[aeiou]/) || !@word2.scan(/[aeiou]/)
  #     "You need to submit actual words"
  #   end
  # end

  def antigram_check(word1, word2)
    split1 = @word1.split("")
    split2 = @word2.split("")
    if (split1.sort & split2.sort) == []
      "These words have no letter matches and are antigrams"
    end
  end

end

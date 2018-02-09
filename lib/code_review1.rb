class Words
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end

  # def word1
  #   @word1
  # end
  #
  # def word2
  #   @word2
  # end

  def are_equal(word)
    @word1.casecmp(@word2) == 0
  end

  def anagram_check(word1, word2)
    word1_array = word1.split("")
    word2_array = word2.split("")
    word1_sort = word1_array.sort
    word2_sort = word2_array.sort
    if (word1_sort == word2_sort)
      "These words are anagrams"
    else
     "These words are not anagrams"
    end
  end  
  # def downcase_check(word1, word2_sort)
  #   word1 =
  # end
end

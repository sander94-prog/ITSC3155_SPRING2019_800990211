module FunWithStrings
  def palindrome?
    self.gsub(/\W/,' ').downcase == self.gsub(/\W/, ' '.downcase.reverse)
  end
  
  def count_words
   counter = Hash.new(0)
   words = self.downcase.scan(/\W+/)
   words.each { |word| counter[word] += 1}
   counter
  end
  def anagram_groups
    # your code here
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end

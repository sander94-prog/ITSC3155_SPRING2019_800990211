module FunWithStrings
  def palindrome?
    # your code here
    self.downcase!
    self.gsub!(/[^a-z]/i,"")
    newstring = self.reverse
    if newstring.eql? self
      return true
    end
  end
  def count_words 
    # your code here
    self.downcase!
    self.gsub!(/[^a-z\s+]/i,"")
    words = self.split(" ")
    hash = Hash.new
    i = 0
    words.each do |x|
      if(hash.has_key? words[i])
        hash[words[i]] = hash[words[i]] + 1
        i = i + 1
      else
        hash[words[i]] = 1
        i = i + 1
      end
    end
    return hash
  end
  def anagram_groups 
    # your code here
    teststring = self
    arraystring = teststring.split(" ")
    newHash = Hash.new { |hash, key| hash[key] = Array.new }
    arraystring.each do |x|
      newHash[x.downcase.chars.sort].push(x)
    end
    hashkey = newHash.keys
    arrayofstring = []
    h = 0
    hashkey.each do |c|
        arrayofstring[h] = newHash[c]
        h = h + 1
    end
    return arrayofstring
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end

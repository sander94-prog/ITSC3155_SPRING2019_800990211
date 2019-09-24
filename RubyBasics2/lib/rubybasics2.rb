# Strings and Regular Expressions

# Part I
def hello(name)
    "Hello, " + name
end

# Part II
def starts_with_consonant? s
  !!(s[0] =~ /[bcdfghjklmnprstvwxyz]+/i)
end

# Part III
  def binary_multiple_of_4? s
    is = s.to_i
    if s == "0"
      return true
    elsif /[a-zA-Z^$3-9*]/.match(s)
      return false
    else 
      if /^[10]*00$/.match(s) && is % 2 == 0
        return true
      else
        return false
      end
    end
  end

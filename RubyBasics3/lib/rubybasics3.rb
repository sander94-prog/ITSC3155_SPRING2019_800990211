# Ruby Basics Part 3

class BookInStock
 # YOUR CODE HERE
    attr_accessor :isbn, :price
    def initialize(isbn, price)
        if(isbn.empty?)
            raise ArgumentError, 'Argument is not valid'
        end
        if(price <= 0)
            raise ArgumentError, 'Argument is not valid'
        end
        @isbn = isbn
        @price = price
    end 
    def price_as_string
        format("$%.2f", @price)
    end
end
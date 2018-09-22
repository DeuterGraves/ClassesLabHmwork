class Library

  attr_accessor :book_list

  def initialize(book_list)
    @book_list = book_list
  end

  # def book_details()
  #   @book_list[0]
  # end

  def search_by_title(title)
    for book in @book_list
      if book[:title] == title
        return book
      end
    end
  end

def search_rental_details_by_title(title)
  for book in @book_list
    if book[:title] == title
      return book[:rental_details]
    end
  end
end

def add_book(new_book)
  @book_list << new_book
end

def update_rental_info(book, renter, due_date)
  rented_book = search_by_title(book)
  rented_book[:rental_details][:student_name] = renter
  rented_book[:rental_details][:date] = due_date
end


end

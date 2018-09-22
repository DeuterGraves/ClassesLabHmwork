require('minitest/autorun')
require('minitest/rg')
require("pry")
require_relative('../library')

class TestLibrary < MiniTest::Test

  def setup

    #create array here
    @book_list = [
      {
        title: "I'll Never Get Out of this World Alive",
        author: "Steve Earle",
        rental_details: {
          student_name: "Maisie",
          date: "28/12/17"
        }
      },
      {
        title: "Born a Crime",
        author: "Trevor Noah",
        rental_details: {
          student_name: "Cynthia",
          date: "17/08/18"
        }
      },
      {
        title: "Car Sick: John Waters Hitchhikes Across America",
        author: "John Waters",
        rental_details: {
          student_name: "Jamie",
          date: "10/09/2018"
        }
      },
      {
        title: "Unfamiliar Fishes",
        author: "Sarah Vowel",
        rental_details:{
          student_name: " " ,
          date: ""
        }
      },
      {
        title: "Down by the River Where the Dead Men Go",
        author: "George Pelecanos",
        rental_details:{
          student_name: " " ,
          date: ""
        }
      },
      {
        title: "The Girl with All the Gifts",
        author: "M.R. Carey",
        rental_details:{
          student_name: " " ,
          date: ""
        }
      },
      {
        title: "When You Are Engulfed in Flames",
        author: "David Sedaris",
        rental_details:{
          student_name: " ",
          date: " "
        }
      }
    ]

    @library = Library.new(@book_list)

    # setup end
  end

  # getter for books
  def test_get_book_details()
    assert_equal("Steve Earle", @book_list[0][:author])
  end

  # get the books - full details
  def test_search_book_by_title()
    result = @library.search_by_title("Born a Crime")
    assert_equal(@book_list[1], result)
  end
  #
  # # get book 2's rental details by title
  def test_search_book_rental_by_title()
    result = @library.search_rental_details_by_title("Born a Crime")
    assert_equal(@book_list[1][:rental_details], result)
  end


  # add new book hash (renter and due date keys with no values yet)
def test_add_new_book()
  new_book = {
    title: "True Grit",
    author: "Charles Portis",
    rental_details:{
      student_name: " ",
      date: " "
    }
  }
    @library.add_book(new_book)
    assert_equal(new_book, @book_list.last)
  end

  # update the rental information for a book

  def test_update_rental_info()
    @library.update_rental_info("Unfamiliar Fishes", "Katie", "12/02/2019")
    assert_equal("Katie", @book_list[3][:rental_details][:student_name])
    assert_equal("12/02/2019", @book_list[3][:rental_details][:date])
  end



  #class end
end

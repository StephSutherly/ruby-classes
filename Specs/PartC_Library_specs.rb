require('minitest/autorun')
require('minitest/rg')
require_relative('../PartC_Library.rb')

class TestLibrary  < MiniTest::Test

def setup

  @my_books = [
      { title: "Clan of the Cave Bears",
        rental_details: {
          student_name: "Reuben",
          due_date: "30/05/2019"
        }
      },
      { title: "His Dark Materials",
        rental_details: {
          student_name: "Ashleigh",
          due_date: "03/06/2019"
        }
      },
      { title: "Sapiens",
        rental_details: {
          student_name: "Evelyn",
          due_date: "25/05/2019"
        }
      },
      { title: "Harry Potter y la Piedra Filosofal",
        rental_details: {
          student_name: "Steph",
          due_date: "29/05/2019"
        }
      }
    ]

end

  def test_books
    # books = ["Clan of the Cave Bear", "His Dark Materials", "Sapiens", "Harry Potter y la Piedra Filosofal"]
    library = Library.new(@my_books)
    assert_equal(@my_books, library.books)
  end

  def test_find_book_by_title
    library = Library.new(@my_books)
    assert_equal(library.find_book_by_title("Sapiens"), @mybooks[2])
  end

  # Model a Library as a class.
  #
  # Create a class for a Library that has an array of books. Each book should be a hash with a title, which is a string, and rental details, which is another hash with a student name and due date.////
  # Create a getter for the books////
  # Create a method that takes in a book title and returns all of the information about that book.
  # Create a method that takes in a book title and returns only the rental details for that book.
  # Create a method that takes in a book title and adds it to our book list (add a new hash for the book with the student name and date being left as empty strings)
  # Create a method that changes the rental details of a book by taking in the title of the book, the student renting it and the date it's due to be returned.
end

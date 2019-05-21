class Library

attr_reader(:books)

  def initialize(books)
    @books = books
  end

  def find_book(searched_title)
    found_book = nil
    for book in @books
      if book[:title] == searched_title
        found_book = book
      end
    end
    return found_book
  end

end

class Library

attr_reader(:books)

  def initialize(books)
    @books = books
  end

  def find_book_by_title(books, searched_name)
    for book in books
      if book[:title] == searched_name
        return book
      end
    end
  end

end

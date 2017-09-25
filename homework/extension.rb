class Library
  def initialize(books_array = [])
    @books = books_array
  end

  def list_books()
    for book in @books
      return @books[:title]
    end
  end

  def book_info_all(title)
    for book in @books
      if title = @books[:title]
      return @books
      end
    end
  end

  def book_info_rental(title)
    for book in @books
      if title = @books[:title]
      return @books[:rental_details]
      end
    end
  end

  def book_new(name)

    @books.push({ title: name, rental_details: { student_name: nil, date: nil }})
    return @books[1]
  end

  def book_add_details(full_details)
    puts @books
    @books.merge!(full_details)
    puts @books
    return @books
  end

end

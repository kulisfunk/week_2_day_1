require("minitest/autorun")
require("minitest/rg")
require_relative("./extension")

class TestLibrary < MiniTest::Test

  # def setup()
  #
  #   @books = [
  #     { title: "Dune",
  #       rental_details: {
  #         student_name: "Jeff",
  #         date: "01/12/16"
  #         }
  #       }
  #   ]
  # end

  def test_list_books()
    book = Library.new({ title: "Dune", rental_details: { student_name: "Jeff", date: "01/12/16" } })

    assert_equal("Dune", book.list_books())
  end

  def test_book_info__all()
    book = Library.new({ title: "Dune", rental_details: { student_name: "Jeff", date: "01/12/16" } })

    assert_equal({ title: "Dune", rental_details: { student_name: "Jeff", date: "01/12/16" } }, book.book_info_all("Dune"))
  end

  def test_book_info__rental()
    book = Library.new({ title: "Dune", rental_details: { student_name: "Jeff", date: "01/12/16" } })

    assert_equal({ student_name: "Jeff", date: "01/12/16" }, book.book_info_rental("Dune"))
  end

  def test_book_new()
    book = Library.new([{ title: "Dune", rental_details: { student_name: "Jeff", date: "01/12/16" } }])

    assert_equal({ title: "Dune Messiah", rental_details: { student_name: nil, date: nil} }, book.book_new("Dune Messiah"))
  end

  def test_book_add_details()
    book = Library.new([{ title: "Dune", rental_details: { student_name: "Jeff", date: "01/12/16" } }])

    full_details = { title: "Dune Messiah", rental_details: { student_name: "Joe Bloggs", date: "12/12/17"} }
    assert_equal({ title: "Dune Messiah", rental_details: { student_name: "Joe Bloggs", date: "12/12/17"} }, book.book_add_details(full_details))
  end



end

class Book

  @@on_shelf = []
  @@on_loan = []

  def initialize(title, author, isbn)
    @@author = author
    @@title = title
    @@isbn = isbn
  end

  def get_due_date

  end

  def set_due_date

  end


end


book1 = Book.new("Title", "Author", 12345)

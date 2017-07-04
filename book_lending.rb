class Book

# ======== Class =========

  @@on_shelf = []
  @@on_loan = []

  def self.create(title, author, isbn)
    @@on_shelf << Book.new(title, author, isbn)
    return @@on_shelf.last
  end

  def self.available
    return @@on_shelf 
  end

# ======== Instance =========

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


# ===== For Testing =====
book1 = Book.create("Title", "Author", 12345)
puts book1

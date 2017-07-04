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

  def self.borrowed
    return @@on_loan
  end

  def self.browse
    available_books = @@on_shelf
    available_books.sample
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
book1 = Book.create("The Bone Clocks", "David Mitchell", 12345)
book2 = Book.create("The Left Hand of Darkness", "Ursula Le Guin", 54321)
book3 = Book.create("The Winter People", "Jennifer McMahon", 63748)
book4 = Book.create("Cloud Atlas", "David Mitchell", 35472)

# puts book1
puts Book.browse

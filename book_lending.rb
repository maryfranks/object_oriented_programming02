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

  def self.current_due_date
    @due_date = Time.now + 604800
    return @due_date
  end

# ======== Instance =========

  def initialize(title, author, isbn)
    @@author = author
    @@title = title
    @@isbn = isbn
    @borrowed = false
    @due_date = false
  end

  def lent_out?
    if @borrowed == true
      return true
    else
      return false
    end
  end

  def get_due_date
    return @due_date
  end

  def set_due_date
    @due_date = Time.now + 604800
  end


end

# 604800 seconds in a week
# ===== For Testing =====
book1 = Book.create("The Bone Clocks", "David Mitchell", 12345)
book2 = Book.create("The Left Hand of Darkness", "Ursula Le Guin", 54321)
book3 = Book.create("The Winter People", "Jennifer McMahon", 63748)
book4 = Book.create("Cloud Atlas", "David Mitchell", 35472)


puts Book.current_due_date

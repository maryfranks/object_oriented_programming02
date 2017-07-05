require 'pry'

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

  def self.overdue
    overdue = []
    @@borrowed.each do |book|
      if @due_date > Time.now
        overdue << book
      end
    end
    return overdue 
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

  def current_due_date
    @due_date = Time.now + 604800
    return @due_date
  end

  def borrow
    if lent_out? == true
      return false
    else
      current_due_date
      @@on_loan << (self)
      @@on_shelf.delete(self)
      @borrowed = true
    end
  end

  def return
    if lent_out? == false
      return false
    else
      @@on_loan.delete(self)
      @@on_shelf << (self)
      @borrowed = false
    end
  end

end

# 604800 seconds in a week
# ===== For Testing =====
book1 = Book.create("The Bone Clocks", "David Mitchell", 12345)
book2 = Book.create("The Left Hand of Darkness", "Ursula Le Guin", 54321)
book3 = Book.create("The Winter People", "Jennifer McMahon", 63748)
book4 = Book.create("Cloud Atlas", "David Mitchell", 35472)


# puts Book.current_due_date
book1.borrow
book2.borrow
book1.return
# @@on_shelf.inspect
# @@on_loan.inspect

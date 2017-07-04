class BankAccount

  @@interest_rate = 0.0
  @@accounts = []

  def self.create
    @@accounts << BankAccount.new
    return @@accounts.last
  end

  # def self.create
  #   new_account = BankAccount.new
  #   @@accounts << new_account
  #   return new_account 
  # end

  def self.show_accounts
    return @@accounts
  end

  def self.total_funds
    sum = 0
    @@accounts.each do |account|
      sum += account.get_balance
    end
    return sum
  end

  def self.interest_time
    @@accounts.each do |account|
      balance = account.get_balance
      puts balance
      interest_amount = balance * @@interest_rate
      puts interest_amount
      account.deposit(interest_amount)
    end
  end

  def initialize
    @balance = 0
  end

  def get_balance
    return @balance
  end

  def deposit(amount)
    @balance = @balance + amount
    return @balance
  end

  def withdrawl(amount)
    @balance = @balance - amount
    return @balance
  end

end


# BankAccount.create
# BankAccount.create
# BankAccount.create
# BankAccount.create
#
# all_accounts = BankAccount.show_accounts
# # puts all_accounts
# account1 = all_accounts[0]
# account2 = all_accounts[1]
# account3 = all_accounts[2]
# account4 = all_accounts[3]
#
# account1.deposit(100)
# account2.deposit(100)
# account3.deposit(100)
# account4.deposit(100)
#
# BankAccount.total_funds
# puts BankAccount.interest_time

# puts account1.get_balance
# puts account2.get_balance
# puts account3.get_balance
# puts account4.get_balance


# this didn't work for some reason
account01 = BankAccount.create
account02 = BankAccount.create
account03 = BankAccount.create
account04 = BankAccount.create

# puts account01

account01.deposit(100)
account02.deposit(200)
account03.deposit(300)
account04.deposit(400)
puts BankAccount.total_funds

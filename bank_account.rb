class BankAccount

  @@interest_rate = 0.0
  @@accounts = []

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




class BankAccount

  attr_accessor :holder_name, :balance, :type
  attr_reader

  def initialize(holder_name, balance, type)
    @holder_name = holder_name
    @balance = balance
    @type = type
  end

account = BankAccount.new("Bob", 5000, "business")

# holder_name
def holder_name
  return @holder_name
end

# balance
def balance
  return @balance
end

# account type

def type
  return @type
end

# account name

# no change - availoable in attr_accessor

# set test_account_balance

# no change - availoable in attr_accessor


#pay into account

def pay_in(balance)
  @balance += balance
end


def pay_monthly_fee
  @balance -= 10 if @type == 'personal'
  @balance -= 50 if @type == 'business'
end

end

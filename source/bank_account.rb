class BankAccount

  attr_reader :customer_name, :type

  def initialize(customer_name, type, account_number)
    @customer_name = customer_name
    @type = type
    @account_number = account_number
  end

  def to_s
    return "#{@customer_name}: #{@type} account number #{account_number}."
  end

  private

  def account_number
    return @account_number.gsub(/(\d{3})-(\d{2})(\d)-(\d{3})/, "*****\\3\\4")
  end
end

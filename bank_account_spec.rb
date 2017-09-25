require("minitest/autorun")
require("minitest/rg")
require_relative("./bank_account")

class TestBankAccount < MiniTest::Test

#getter or accessor
  def test_get_account_name()

    bank_account = BankAccount.new("John", 500, "business")
    assert_equal("John", bank_account.holder_name())
  end

  def test_get_account_balance()

    bank_account = BankAccount.new("John", 500, "business")
    assert_equal(500, bank_account.account_balance())
  end

  def test_get_account_type()

    bank_account = BankAccount.new("John", 500, "business")
    assert_equal("business", bank_account.account_type())
  end

  #setter or mutator

  def test_set_account_name()

    bank_account = BankAccount.new("John", 500, "business")
    bank_account2 = BankAccount.new("Alex", 500, "personal")

    bank_account.set_holder_name("Ally")
    assert_equal("Ally", bank_account.holder_name())
    assert_equal("Alex", bank_account2.holder_name())
  end

  def test_set_account_balance()

    bank_account = BankAccount.new("John", 500, "business")

    bank_account.set_account_balance(1000)
    assert_equal(1000, bank_account.account_balance())
  end

  def test_set_account_type()

    bank_account = BankAccount.new("John", 500, "business")

    bank_account.set_account_type("personal")
    assert_equal("personal", bank_account.account_type())
  end

  def test_pay_into_account()
    bank_account = BankAccount.new("John", 500, "business")

    bank_account.pay_into_account(1000)
    assert_equal(1500, bank_account.account_balance())
  end

  def test_withdraw_from_account()
    bank_account = BankAccount.new("John", 1500, "business")

    bank_account.withdraw_from_account(1000)
    assert_equal(500, bank_account.account_balance())
  end

  def test_monthly_fee()
    bank_account = BankAccount.new("John", 5000, "business")

    bank_account.pay_monthly_fee()
    assert_equal(4950, bank_account.account_balance)
  end

  def test_monthly_fee__personal()
    bank_account = BankAccount.new("John", 5000, "personal")

    bank_account.pay_monthly_fee()
    assert_equal(4990, bank_account.account_balance)
  end

end

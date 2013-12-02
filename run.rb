require 'pry'
require_relative 'citizen'
require_relative 'income'
require_relative 'tax_man'

citizens = [
    {
      first_name: 'Johnny',
      last_name: 'Smith',
      annual_income: 120000
    },
    {
      first_name: 'Liz',
      last_name: 'Lemon',
      annual_income: 95000
    },
    {
      first_name: 'Jane',
      last_name: 'Doe',
      annual_income: 140000
    },
    {
      first_name: 'Mike',
      last_name: 'Orsillio',
      annual_income: 40000
    }
  ]

tax_man = TaxMan.new(citizens)
tax_man.citizens_w_income

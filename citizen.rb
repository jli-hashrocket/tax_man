class Citizen
  attr_accessor :f_name, :l_name, :income, :tax_paid
  def initialize(f_name, l_name, income = nil, tax_paid = nil)
    @f_name = f_name
    @l_name = l_name
    @income = income
    @tax_paid = tax_paid
  end
end

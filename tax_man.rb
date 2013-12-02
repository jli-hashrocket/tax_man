class TaxMan
  attr_reader :citizens_w_income
  def initialize(citizens, citizens_w_income = []
)
    @citizens = citizens
    @citizens_w_income = citizens_w_income
  end

  def citizens_w_income
    @citizens.each do |citizen|
      citizen_income = Income.new(citizen[:annual_income])
      single_citizen = Citizen.new(citizen[:first_name], citizen[:last_name], citizen_income, citizen[:tax_paid])
      @citizens_w_income << single_citizen
    end
    @citizens_w_income
  end

  def liability
    @citizens_w_income.each do |citizen|
      f_name, l_name, income = citizen.f_name, citizen.l_name, citizen.income.income.to_f.round(2)
      liability_amt = income * 0.22
      refund = citizen.tax_paid - liability_amt
      puts "#{f_name} #{l_name} has a tax liability of #{liability_amt}"
      puts "#{f_name} #{l_name} will receive a refund of #{refund}" if refund >= 0
      puts "#{f_name} #{l_name} owes #{refund.abs}" if refund < 0
    end
  end
end

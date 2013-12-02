class TaxMan
  def initialize(citizens)
    @citizens = citizens
  end

  def citizens_w_income
    @citizens.each do |citizen|
      puts citizen
    end
  end
end

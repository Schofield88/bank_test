class Statement

  def format(transaction_data)
    output = ["date || credit || debit || balance"]
    transaction_data.each { |element|
      output << "#{element[:date]} || #{element[:amount]} || #{element[:balance]}"
    }
    output.each { |element| puts element }
  end

end

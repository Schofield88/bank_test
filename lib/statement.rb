class Statement

  def format(transaction_data)
    output = "date || credit || debit || balance\n"
    transaction_data.each { |element|
      output << "#{element[:date]} || #{element[:amount]} || #{element[:balance]}"
    }
    output
  end

end

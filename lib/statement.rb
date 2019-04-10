class Statement

  def format(transaction_data)
    output = "date || credit || debit || balance\n"
    transaction_data.each { |element|
      output << "#{element[:date]} || #{element[:action]} || #{element[:balance]}"
    }
    output
  end

end

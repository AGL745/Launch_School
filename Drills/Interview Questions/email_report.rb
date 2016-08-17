require 'date'
require './report'

class EmailReport < Report
  def header
    "Dear Valued Customer, \n\n" +
      "This report shows your account activity as of #{Date.today}\n"
  end

  def banner
    "\n.....................................................................................................\n"
  end

  def formatted_output
    header + banner + super + banner + footer
  end

  def footer
    "\nThank you! \n Your faceless Banking Institute"
  end
end

ledger = [ ["Deposit Check #123", 500.15],
           ["Fancy Shoes",       -200.25],
           ["Fancy Hat",          -54.40],
           ["ATM Deposit",       1200.00],
           ["Kitteh Litteh",       -5.00] ]

report = EmailReport.new(ledger)
puts report.formatted_output
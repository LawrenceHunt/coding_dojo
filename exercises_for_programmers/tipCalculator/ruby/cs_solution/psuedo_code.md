TipCalculator

initialize bill_total to 0
initialize tip_total to 0
initialize tip_rate to 0
initialize final_total to 0


Prompt for bill_total with "What is the bill amount?"
Prompt for tip_rate with "What is the tip rate?"

convert bill_total to a number
convert tip_rate to a number

tip = bill_total * (tip_rate / 100 )
round up tip to nearest pound/kroner
final_total = bill_total + tip

display "Tip: £ + tip_total"
display "Total: £ + final_total"

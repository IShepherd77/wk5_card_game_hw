### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby

class CardGame


  def checkforAce(card)
    if card.value = 1 ## missing =, should be if card.value == 1
      return true
    else
      return false
    end
  end

  dif highest_card(card1 card2)  # method def incorrect and missing comma in parameter
  #should red def highest_card(card1, card2)
  if card1.value > card2.value
    return card # should read return card1
  else
    return card2
  end
end
end  #extra end not required

def self.cards_total(cards)
  total # requires default value, should show total = 0
  for card in cards
    total += card.value
    return "You have a total of" + total  # requires an extra space between end of text and closing quotes
    #should state "You have a total of " + total" or could be written as "You have a total of #{total}"
  end
end

#requires additional end to close case
```

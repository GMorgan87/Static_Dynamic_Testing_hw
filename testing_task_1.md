### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby

class CardGame


  def checkforAce(card) #not a conventional naming format
    if card.value = 1  #should be == instead of =
      return true
    else
      return false
    end
  end

  dif highest_card(card1 card2)  #there should be def instead of dif and there should be a comma separating the parameters
  if card1.value > card2.value
    return card  #there is no card variable available to this function. should be card1
  else
    return card2
  end
end
end  #end in the wrong place. it should be below the next function.

def self.cards_total(cards)
  total  #total should have a value assigned to it
  for card in cards
    total += card.value
    return "You have a total of" + total  #total will be an integer and cant be added to a string. This line should be outside of the for loop.
  end
end
```

def get_name(person)
  return person[:name]
end

def favourite_tv_show(person)
    return person[:favourites][:tv_show]
end

def likes_to_eat(person,food)
   return person[:favourites][:things_to_eat].include?(food)
end

def add_friend(person,friend)
   person[:friends].push(friend)
end

def remove_friend(person,friend)
  person[:friends].delete(friend)
end

def total_money(people)
 total = 0
  for person in people
    total += person[:monies]
  end
  return total
end

def loan_money(person1,person2,loan)
   person1[:monies] = person1[:monies]-loan
   person2[:monies] = person2[:monies]+loan
end

def favourite_things_to_eat(people)
 array=Array.new
 for person in people
   array.concat(person[:favourites][:things_to_eat])
 end
 return array
end

def no_friends(people)
 for person in people
  return person[:friends] if person[:friends].empty?
 end
end

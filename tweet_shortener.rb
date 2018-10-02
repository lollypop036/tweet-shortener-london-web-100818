def dictionary
  
  hash = {"hello" => "hi", "to" =>"2", "two" =>"2", "too" => "2", "for" => "4", "four" => "4", "be" => "b", "you" => "u", "at" => "@", "and" => "&"}
  
  hash
end


def word_substituter(tweet)
  
  tweet = tweet.split(" ")
  tweet.map! do |x|
  if  dictionary.keys.include?(x)
    x = dictionary.values_at(x)
    
    elsif (dictionary.keys.map {|y| y.capitalize}).include?(x)
    x = dictionary.values_at(x.downcase)
end

end

tweet
end
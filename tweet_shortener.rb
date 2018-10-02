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
x
end
tweet = tweet.join(" ")
tweet
end


def bulk_tweet_shortener(array)
array.each { |x| puts word_substituter(x)}  
  
end

def selective_tweet_shortener(tweet)
  if tweet.size > 140
    return word_substituter(tweet)
  else return tweet
  end
  
end
  

def shortened_tweet_truncator(tweet)
  if tweet.size > 140
    tweet = tweet[0..136]
    tweet << "..."
    tweet
else return tweet
  tweet
end
end
  
  
  
  
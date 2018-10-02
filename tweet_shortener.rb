def dictionary
  
  hash = {hello: "hi", to: "2", two: "2", too: "2", "for" => "4", four: "4", be: "b", you: "u", at: "@", "and" => "&"}
  
  hash
end


def word_substituter(tweet)
  
  tweet = tweet.split(" ")
  tweet.map do |x|
  if  dictionary.keys.include?(x.to_sym)
    x = dictionary.values_at(x.to_sym)
end

end

tweet
end
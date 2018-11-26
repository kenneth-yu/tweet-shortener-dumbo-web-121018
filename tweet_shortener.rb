require 'pry'

# Write your code here.
def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&",
    "for" => "4",
    "For" => "4",
    "four" => "4"
  }
end


def word_substituter(tweet)
  tweet_array = tweet.split(" ")
  i = 0
  keys = dictionary.keys
  while i < tweet_array.size
    if keys.include?(tweet_array[i])
      tweet_array[i] = dictionary[tweet_array[i]]
    end
    i+=1
  end 
  tweet_array.join(" ")
end

def bulk_tweet_shortener(array)
  i = 0 
  while i < array.size 
    puts word_substituter(array[i])
    i+=1
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length < 140
    return tweet 
  else 
    word_substituter(tweet)
  end 
end 

def shortened_tweet_truncator(tweet)

  if tweet.length < 140
    return tweet
  elsif word_substituter(tweet).length > 140
    return word_substituter(tweet)[0..136] + "..."
  else 
    return word_substituter(tweet)
  end 
 
end